require "openai"

class DashboardController < ApplicationController
  include ApplicationHelper
  def show
    @user = User.find(params[:id])
    @category_score = Category.joins(:choices).group("categories.name").sum("choices.score")
    @jobs = Job.all
    @job = Job.find(1)

    @formations_for_job = Formation.joins(:job_formations)
                                    .where(job_formations: { job_id: @job.id })
                                    .pluck(:name, :duration)
                                    .to_h

    @formations_for_job_duration = Formation.joins(:job_formations)
                                    .where(job_formations: { job_id: @job.id })
                                    .pluck(:name, :duration)
                                    .to_h

    @formations_for_job_price = Formation.joins(:job_formations)
                                 .where(job_formations: { job_id: @job.id })
                                 .pluck(:name, :price)
                                 .to_h

    client = OpenAI::Client.new(access_token: ENV["OPENAI_ACCESS_TOKEN"])

    @result = Choice.joins(:user_answers)
                                    .where(user_answers: { user_id: current_user.id })
                                    .includes(:category)
                                    .group('categories.id')
                                    .pluck("categories.name, sum(choices.score) as score_sum")
                                    .to_h

    chatgpt_response = client.chat(parameters: {
        model: "gpt-4o-mini",
        messages: [
          { role: "system", content: "Tu es un expert en orientation professionnelle, qui doit conseiller des enfants agés entre 14-22 ans." },
          { role: "user", content: "Analyse ces réponses du questionnaire : #{JSON.generate(@result)}.
            À partir des réponses de l'utilisateur au questionnaire, analyse ses préférences, ses compétences et ses
            aspirations pour définir un profil type. Fait une description détaillée et bienveillante. Evite les phrases
            génériques et privilégie des phrases adaptées au profil. Redige le texte comme suit:

            <h4>Titre de la description</h4> : Le profil identifié (exemple : 'Créatif et analytique', 'Leader et
            organisé', etc.). le titre de la description sera le profil identifié uniquement (n'ecris pas le mot
            'profil').

            ATTENTION : n'oublie pas de bien mettre les classes 'less-text' et 'more-text' pour que le texte s'affiche
            correctement.

            <p class='less-text'>Insère une description du profil (maximum 100 mots)</p>

            <div class='more-text'>
              <p>Propose les domaines professionnels adaptés. N'affiche pas les scores.</p>
              <p>Ajoute un conseil personnalisé</p>
            </div>

            Donne uniquement la description du profil. Adapte là en fonction des résultats. La
            description doit être intégralement rédigée en maximum 300 mots. Mets les mots importants dans des balises <b>.
            " }
        ]
      })
    @profile_description = chatgpt_response["choices"][0]["message"]["content"]
    @markdown_content = markdown_to_html(@profile_description)
  end

  def update
  end
end
