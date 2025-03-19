class QualifyValueService


  def self.qualify_jobs
    Job.all.each do |job|
      if job.category_values.count == 4
        next
      end
      job.category_values.destroy_all
      client = OpenAI::Client.new(access_token: ENV["OPENAI_ACCESS_TOKEN"])

      chatgpt_response = client.chat(parameters: {
        model: "gpt-4o-mini",
        messages: [
          { role: "system", content: "Tu es un expert en orientation professionnelle, qui doit conseiller des enfants agés entre 14-22 ans." },
          { role: "user", content: "Qualifie moi ce metier (titre: #{job.name}, description: #{job.description}) selon
          les critères suivants: Artistique, Réaliste, Logique et Social.
          Je souhaite une note de 0 à 100 pour chaque critère.
          ATTENTION: Ne met pas d'accent sur les lettres ou de guillement autre que dans la structure JSON.
          Toutes tes reponses doivent avoir la strucuture exacte suivante en JSON:
          {\"Artistique\": \"80\", \"Realiste\": \"20\", \"Logique\": \"0\", \"Social\": \"0\"}
          Tu dois remplacer les valeurs par celles que tu estimes correctes pour ce metier."
        }

      ],
      format: "json"
      })

      answers = JSON.parse(chatgpt_response["choices"][0]["message"]["content"])
      answers.each do |key, value|
        cat = Category.find_by(name: key)
        job.category_values.create(category: cat, value: value)
      end
    end
  end

  def self.qualify_choices
    Choice.all.each do |choice|
      if choice.category_values.count == 4
        next
      end
      choice.category_values.destroy_all
      client = OpenAI::Client.new(access_token: ENV["OPENAI_ACCESS_TOKEN"])

      chatgpt_response = client.chat(parameters: {
        model: "gpt-4o-mini",
        messages: [
          { role: "system", content: "Tu es un expert en orientation professionnelle, qui doit conseiller des enfants agés entre 14-22 ans." },
          { role: "user", content: "Nous avons créé un test de personnalité. Dont voici la question: #{choice.question.question}.
          Qualifie moi cette réponse (choice: #{choice.choice}) selon les critères suivants: Artistique, Réaliste, Logique et Social.
          Je souhaite une note de 0 à 100 pour chaque choix.
          ATTENTION: Ne met pas d'accent sur les lettres ou de guillement autre que dans la structure JSON.
          Toutes tes reponses doivent avoir la strucuture exacte suivante en JSON:
          {\"Artistique\": \"80\", \"Realiste\": \"20\", \"Logique\": \"0\", \"Social\": \"0\"}
          Tu dois remplacer les valeurs par celles que tu estimes correctes pour ce choix."
        }
      ],
      format: "json"
      })

      answers = JSON.parse(chatgpt_response["choices"][0]["message"]["content"])
      answers.each do |key, value|
        cat = Category.find_by(name: key)
        choice.category_values.create(category: cat, value: value)
      end
    end
  end
end
