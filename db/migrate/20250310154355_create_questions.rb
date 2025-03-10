class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :position
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
