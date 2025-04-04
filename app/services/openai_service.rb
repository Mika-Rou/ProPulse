class OpenaiService

  def self.profil_description(result)
    client = OpenAI::Client.new(access_token: ENV["OPENAI_ACCESS_TOKEN"])
    chatgpt_response = client.chat(parameters: {
        model: "gpt-4o-mini",
        messages: [
          { role: "system", content: "Tu es un expert en orientation professionnelle, qui doit conseiller des enfants agés entre 14-22 ans." },
          { role: "user", content: "Analyse ces réponses du questionnaire : #{JSON.generate(result)}.
            À partir des réponses de l'utilisateur au questionnaire, analyse ses préférences, ses compétences et ses
            aspirations pour définir un profil type. Fait une description détaillée et bienveillante. Evite les phrases
            génériques et privilégie des phrases adaptées au profil. C'est ce contenu que tu devras insérer dans le
            HTML.

            Voici la structure que doit avoir le HTML (tu dois respecter exactement cette structure et
            remplacer le contenu entre [ ] par le contenu demandé) :

            Donne uniquement la description du profil. Adapte là en fonction des résultats. La
            description doit être intégralement rédigée en maximum 300 mots. Mets les mots importants dans des
            balises <b>[TON MOT]</b> (uniquement des mots, pas des phrases entières).
            ATTENTION : n'oublie pas de bien mettre les classes 'less-text' et 'more-text' pour que le texte s'affiche
            correctement. Redige le texte comme suit en HTML, renvoie moi unqiuement le code HTML pour l'utiliser
            directement dans ma vue. Je ne veux aucune balise markdown, suit exactemenr la structure ci-dessous
            (donc ta réponse commence par <h4> et finit par </div>, SANS balise <code> autour).:

            <h4>[TITRE]</h4>
            <p class='less-text'>[DESCRIPTION]</p>
            <div class='text-to-display'>
              <p>[DOMAINES PROFESSIONNELS]</p>
              <p>[CONSEIL]</p>
            </div>

            Voici une descrpition des contenus que tu dois insérer:
            [TITRE] : Le titre de la description du profil. (exemple : 'Créatif et analytique', 'Leader et
            organisé', etc.). le titre de la description sera le profil identifié uniquement (n'ecris pas le mot
            'profil').
            [DESCRIPTION] : Insère une description du profil (maximum 100 mots)
            [DOMAINES PROFESSIONNELS] : Propose un texte explicatif des domaines professionnels adaptés au profil. N'affiche pas les scores.
            [CONSEIL] : Un conseil personnalisé pour le profil

            " }
        ]
      })
    return chatgpt_response["choices"][0]["message"]["content"]
  end

  def method_name
 job_suggestion_response = client.chat(parameters: {
      model: "gpt-4o-mini",
      messages: [
        { role: "system", content: "Tu es un expert en orientation professionnelle qui conseille des jeunes de 14 à 22 ans." },
        { role: "user", content: "Analyse ces résultats du questionnaire : #{JSON.generate(@result)}.
          - Propose **exactement 10 métiers** qui correspondent à son profil.
          - Retourne uniquement un objet JSON avec la structure suivante :

          {
            \"profile\": \"[TITRE]\",
            \"description\": \"[DESCRIPTION]\",
            \"jobs\": [
              {\"name\": \"[Nom du métier 1]\"},
              {\"name\": \"[Nom du métier 2]\"},
              {\"name\": \"[Nom du métier 3]\"},
              {\"name\": \"[Nom du métier 4]\"},
              {\"name\": \"[Nom du métier 5]\"},
              {\"name\": \"[Nom du métier 6]\"},
              {\"name\": \"[Nom du métier 7]\"},
              {\"name\": \"[Nom du métier 8]\"},
              {\"name\": \"[Nom du métier 9]\"},
              {\"name\": \"[Nom du métier 10]\"}
            ]
          }

          Ne renvoie **rien d’autre** que cet objet JSON." }
      ]
        })

    begin
      parsed_response = JSON.parse(job_suggestion_response["choices"][0]["message"]["content"]) rescue {}
      @suggested_jobs = parsed_response["jobs"] || []
    rescue JSON::ParserError
      @suggested_jobs = []
    end
      @suggested_job = Job.find_by(name: @suggested_jobs[0].first[1])
  end


end
