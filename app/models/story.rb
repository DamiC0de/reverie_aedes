class Story < ApplicationRecord
    belongs_to :user
    require 'dotenv'
    Dotenv.load

    def generate_content
        input = generate_openai_input
      
        response = RestClient.post("https://api.openai.com/v1/engines/davinci-codex/completions",
          {
            "prompt" => input,
            "max_tokens" => 100
          }.to_json,
          {
            "Content-Type" => "application/json",
            "Authorization" => "Bearer #{ENV['OPENAI_API_KEY']}"
          }
        )
      
        JSON.parse(response.body)["choices"].first["text"].strip
      end

      
    def generate_openai_input
      "Raconte moi une histoire pour un enfant de #{age} ans dont le thème est #{theme}, le personnage principal s'appelle #{name}, le personnage secondaire s'appelle #{secondary_character} et son objet fétiche s'appelle #{fav_object}."
    end
  end
  