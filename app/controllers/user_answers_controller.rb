class UserAnswersController < ApplicationController
  def create
    @user_answer = UserAnswer.new(user_id: current_user.id)
  end

end
