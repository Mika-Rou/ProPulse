class Job < ApplicationRecord
  has_many :job_categories
  has_many :job_formations
  has_many :categories, through: :job_categories
end
