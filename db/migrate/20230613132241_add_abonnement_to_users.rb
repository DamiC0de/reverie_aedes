class AddAbonnementToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :abonnement, :string,default: "none"
    add_column :users, :first_name, :string,default: "unknown"
    add_column :users, :last_name, :string,default: "unknown"
    add_column :users, :end_of_abo, :datetime
  end
end
