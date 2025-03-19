class AddFieldToTests < ActiveRecord::Migration[7.1]
  def change
    add_column :tests, :img_name, :string
    add_column :tests, :img_icon, :string
    add_column :tests, :description, :string
  end
end
