class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_answers
  has_many :category_values, as: :typeable

  validates :first_name, presence: true
  validates :last_name, presence: true


  def profil_category
    score = { Artistique: 0, Realiste: 0, Logique: 0, Social: 0 }
    # si test effectué, additionné les scores
    # calcul de la somme de tous les user.categories_values
    total = 0
    self.category_values.each do |category_value|
      total += category_value.value
    end
    # calcul de la somme de tous les user.categories_values
    self.category_values.each do |category_value|
      score[category_value.category.name.to_sym] += (category_value.value * 100 / total)
    end
    return score
  end
end
