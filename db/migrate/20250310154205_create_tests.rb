class CreateTests < ActiveRecord::Migration[7.1]
  def change
    create_table :tests do |t|
      t.string :name
      t.string :category
      t.integer :duration
      t.integer :nb_questions

      t.timestamps
    end
  end
end
