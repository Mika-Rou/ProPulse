class QualifyValueService


  def self.qualify
    Job.all.each do |job|
      client = OpenAI::Client.new(access_token: ENV["OPENAI_ACCESS_TOKEN"])

      chatgpt_response = client.chat(parameters: {
        model: "gpt-4o-mini",
        messages: [
          { role: "system", content: "Tu es un expert en orientation professionnelle, qui doit conseiller des enfants agés entre 14-22 ans." },
          { role: "user", content: "Qualifie moi ce metier (titre: #{job.name}, description: #{job.description}) selon les critères suivants: Artistique, Réaliste, Logique et Social. Ne met jamais d'accent sur aucun lettre. Je souhaite une note de 0 à 100 pour chaque critère.
          Toutes tes reponses doivent avoir la strucuture exacte suivante en JSON:
          {\"Artistique\": \"80\", \"Realiste\": \"20\", \"Logique\": \"0\", \"Social\": \"0\"}
          Tu dois remplacer les valeurs par celles que tu estimes correctes pour ce metier."
        }

      ]
      })

      answers = JSON.parse(chatgpt_response["choices"][0]["message"]["content"])
      answers.each do |key, value|
        cat = Category.find_by(name: key)
        job.category_values.create(category: cat, value: value)
      end
    end
  end
end
