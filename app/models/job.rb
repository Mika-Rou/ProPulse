class Job < ApplicationRecord
  has_many :job_categories
  has_many :job_formations
end
