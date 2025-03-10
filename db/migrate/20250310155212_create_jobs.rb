class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.integer :salary
      t.string :url_job

      t.timestamps
    end
  end
end
