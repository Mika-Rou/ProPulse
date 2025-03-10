class Choice < ApplicationRecord
  belongs_to :question
  belongs_to :category
  has_many :user_answers
end
