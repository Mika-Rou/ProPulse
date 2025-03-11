class DashboardController < ApplicationController
  def show
    @user = User.find(params[:id])
    @category_score = Category.joins(:choices).group("categories.name").sum("choices.score")
    @jobs = Job.all
    @job = Job.first

    @formations_for_job = Formation.joins(:job_formations)
                                    .where(job_formations: { job_id: @job.id })
                                    .pluck(:name, :duration)
                                    .to_h
  end

  def edit
  end

  def update
  end
end
