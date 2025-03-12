class UserAnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @test = @question.test
    @user_answer = UserAnswer.new(user: current_user)
    @user_answer.choice_id = params[:user_answer][:choice_id]

    if @user_answer.save
    next_question = find_next_question

      if next_question
        redirect_to question_path(next_question)
      else
        redirect_to dashboard_path(current_user)
      end

    else
      flash[:alert] = "Erreur de sauvegarde"
      redirect_to question_path(@question)
    end
  end

  private

  def find_next_question
    @test.questions.select { |question| question.position == @question.position + 1 }.first
  end
end
