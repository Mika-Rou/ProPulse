class CreateJobCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :job_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
