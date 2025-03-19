class Category < ApplicationRecord
  has_many :choices
  has_many :job_categories
  has_many :category_values
end
