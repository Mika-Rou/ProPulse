class Job < ApplicationRecord
  has_many :job_categories
  has_many :job_formations
  has_many :categories, through: :job_categories
  has_many :category_values, as: :typeable

  # has_neighbors :embedding
  # after_create :set_embedding

  def self.top_10_closest_jobs(category_hash)
    # Convert the input hash values to floats
    input_values = category_hash.values.map(&:to_f)
    # Sort jobs by similarity with the input hash
    all.sort_by do |job|
      job_values = job.category_values.map { |cv| cv.value.to_f }
      # Ensure the job_values are in the same order as input_values
      # job_values = category_hash.keys.map { |key| job.category_values.find { |cv| cv.name == key }&.value.to_f || 0.0 }
      # Calculate Euclidean distance
      distance = Math.sqrt(job_values.zip(input_values).map { |j, i| (j - i) ** 2 }.sum)
      # Return the similarity as the inverse of the distance
      -(1.0 / (1.0 + distance))
    end.first(10)
  end

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
