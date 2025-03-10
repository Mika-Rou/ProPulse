class CreateChoices < ActiveRecord::Migration[7.1]
  def change
    create_table :choices do |t|
      t.integer :score
      t.string :choice
      t.references :question, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
