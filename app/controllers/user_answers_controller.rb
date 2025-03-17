class UserAnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @test = @question.test
    @user_answer = UserAnswer.new(user: current_user)
    @user_answer.choice_id = params[:user_answer][:choice_id]


    @result = Choice.joins(:user_answers)
                                    .where(user_answers: { user_id: current_user.id })
                                    .includes(:category)
                                    .group('categories.id')
                                    .pluck("categories.name, sum(choices.score) as score_sum")
                                    .to_h
                                    
    if @user_answer.save
    next_question = find_next_question

      if next_question
        redirect_to question_path(next_question)
      else
        redirect_to dashboard_path(current_user)
      end

    else
      flash[:alert] = "Oups ! Il semble que vous n'ayez pas encore saisi de réponse. Essayez à nouveau !"
      redirect_to question_path(@question)
    end
  end

  private

  def find_next_question
    @test.questions.select { |question| question.position == @question.position + 1 }.first
  end
end
