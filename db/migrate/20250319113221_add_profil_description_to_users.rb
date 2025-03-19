class AddProfilDescriptionToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :profil_description, :text
  end
end
