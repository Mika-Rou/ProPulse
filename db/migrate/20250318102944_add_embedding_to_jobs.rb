class AddEmbeddingToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :embedding, :vector, limit: 1536
  end
end
