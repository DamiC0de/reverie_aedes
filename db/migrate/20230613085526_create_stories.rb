class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :theme
      t.integer :age
      t.string :name
      t.string :fav_object
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
