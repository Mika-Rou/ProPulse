class Choice < ApplicationRecord
  belongs_to :question
  belongs_to :category
  has_many :user_answers
  has_many :category_values, as: :typeable
end
