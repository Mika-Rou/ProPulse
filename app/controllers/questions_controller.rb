class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @test = @question.test
    @user_answer = UserAnswer.new(user: current_user)

    @progress = ( @question.position.to_f / @test.questions.count * 100).round
  end
end
