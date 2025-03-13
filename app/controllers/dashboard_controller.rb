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
          { role: "system", content: "Tu es un expert en orientation professionnelle." },
          { role: "user", content: "Analyse ces réponses du questionnaire : #{JSON.generate(@result)}.
            À partir des réponses de l'utilisateur au questionnaire, analyse ses préférences, ses compétences et ses
            aspirations pour définir un profil type. Fait une description détaillée et bienveillante. Evite les phrases
            génériques et privilégie des phrases adaptées au profil. Identifie:
            1. Le type de profil (exemple : 'Créatif et analytique', 'Leader et organisé', etc.). Ce type de profil doit
             apparaitre en titre de la desciption.
            2. Propose les domaines professionnels adaptés. Mets ces informations dans un paragraphe distinct. N'affiche
             pas les scores.
            3. Ajoute un conseil personnalisé. Mets ces conseils dans un paragraphe distinct.
            Donne uniquement la description du profil. Adapte là en fonction des résultats. La description doit être
            intégralement rédigée en maximum 200 mots. Indique mots importants en gras." }
        ]
    })
    @profile_description = chatgpt_response["choices"][0]["message"]["content"]
    @markdown_content = markdown_to_html(@profile_description)
  end

  def update
  end
end
