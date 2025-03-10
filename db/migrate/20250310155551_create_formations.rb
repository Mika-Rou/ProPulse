class CreateFormations < ActiveRecord::Migration[7.1]
  def change
    create_table :formations do |t|
      t.string :name
      t.string :type
      t.integer :duration
      t.integer :price
      t.string :url_formation

      t.timestamps
    end
  end
end
