class CategoryValue < ApplicationRecord
  belongs_to :typeable, polymorphic: true
  belongs_to :category
end
