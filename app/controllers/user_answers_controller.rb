class UserAnswersController < ApplicationController
  def create
    @user_answer = UserAnswer.new(user_id: current_user.id)
    @user_answer.choice_id = params[:user_answer][:choice_id]
    @test = @user_answer.choice.question.test
    @question = @user_answer.choice.question
    @user_answer.save
    next_question = find_next_question
    if next_question
      redirect_to question_path(next_question)
    else
      redirect_to user_path(current_user)
    end
  end

  private

  def find_next_question
    @test.questions.select { |question| question.position == @question.position + 1 }.first
  end
end
