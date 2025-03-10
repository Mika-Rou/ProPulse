class CreateJobFormations < ActiveRecord::Migration[7.1]
  def change
    create_table :job_formations do |t|
      t.references :job, null: false, foreign_key: true
      t.references :formation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
