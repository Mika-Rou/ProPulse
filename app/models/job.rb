class Job < ApplicationRecord
  has_many :job_categories
  has_many :job_formations
  has_many :categories, through: :job_categories
  has_many :category_values, as: :typeable
  
  has_neighbors :embedding
  after_create :set_embedding

  private

  def set_embedding
    client = OpenAI::Client.new
    response = client.embeddings(
      parameters: {
        model: 'text-embedding-3-small',
        input: "Job: #{name}"
      }
    )
    embedding = response['data'][0]['embedding']
    update(embedding: embedding)
  end
end
