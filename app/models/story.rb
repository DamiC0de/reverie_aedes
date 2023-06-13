class Story < ApplicationRecord
    belongs_to :user
  
    def generate_openai_input
      "Raconte moi une histoire pour un enfant de #{age} ans dont le thème est #{theme}, le personnage principal s'appelle #{name}, le personnage secondaire s'appelle #{secondary_character} et son objet fétiche s'appelle #{fav_object}."
    end
  end
  