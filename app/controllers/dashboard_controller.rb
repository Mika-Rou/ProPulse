require "openai"

class DashboardController < ApplicationController
  include ApplicationHelper
  def show
    @user = User.find(params[:id])
    @category_score = Category.joins(:choices).group("categories.name").sum("choices.score")
    @jobs = Job.all.first(10)
    @job = Job.find(1)

    @formations_for_job = Formation.joins(:job_formations)
                                    .where(job_formations: { job_id: @job.id })
                                    .pluck(:name, :duration)
                                    .to_h

    @formations_for_job_duration = Formation.joins(:job_formations)
                                    .where(job_formations: { job_id: @job.id })
                                    .pluck(:name, :duration)
                                    .to_h

    @formations_for_job_price = Formation.joins(:job_formations)
                                 .where(job_formations: { job_id: @job.id })
                                 .pluck(:name, :price)
                                 .to_h


    result = Choice.joins(:user_answers)
    .where(user_answers: { user_id: current_user.id })
    .includes(:category)
    .group('categories.id')
    .pluck("categories.name, sum(choices.score) as score_sum")
    .to_h


    @profile_description = OpenaiService.profil_description(result)
    @markdown_content = markdown_to_html(@profile_description)

  end

  def update
  end
end
