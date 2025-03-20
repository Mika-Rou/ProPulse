class Test < ApplicationRecord
  has_many :questions

  scope :without_login, -> { where.not(name: "Bienvenue à bord!") }

  def first_question
      questions.find_by(position: 1) unless questions.empty?
  end
end
