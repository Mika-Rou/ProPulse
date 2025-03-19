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
    score.each do |cat|
      category_scores = self.user_answers.joins(:choice)
           .joins("INNER JOIN category_values ON category_values.typeable_id = choices.id AND category_values.typeable_type = 'Choice'")
           .group('category_values.category_id')
           .average('category_values.value')

      category_scores.each do |category_id, average_value|
        category_name = Category.find(category_id).name
        score[category_name.to_sym] = average_value
      end

    end
    return score
  end

  def profil_update
    profil_description = OpenaiService.profil_description(self.profil_category)
    self.update(profil_description: profil_description)
  end
end
