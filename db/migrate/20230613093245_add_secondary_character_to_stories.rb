class AddSecondaryCharacterToStories < ActiveRecord::Migration[7.0]
  def change
    add_column :stories, :secondary_character, :string
  end
end
