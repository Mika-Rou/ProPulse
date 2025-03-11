class QuestionsController < ApplicationController
  def show

    @question = Question.find(params[:id])
    @user_answer = UserAnswer.new
  end
end
