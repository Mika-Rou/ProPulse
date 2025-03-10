class UserAnswer < ApplicationRecord
  belongs_to :choice
  belongs_to :user
end
