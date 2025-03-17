class JobsController < ApplicationController
  def show
    @job = Job.find(params[:id])
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

    @result = Choice.joins(:user_answers)
                                        .where(user_answers: { user_id: current_user.id })
                                        .includes(:category)
                                        .group('categories.id')
                                        .pluck("categories.name, sum(choices.score) as score_sum")
                                        .to_h
                                        
    @category_score = Category.joins(:choices).group("categories.name").sum("choices.score")
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream:
        turbo_stream.replace(:job_description, partial: "jobs/jobs_details",
            locals: { job: @job, job_formations: @job_formations,
                                formations_for_job_duration: @formations_for_job_duration,
                                formations_for_job_price: @formations_for_job_price })
      end
    end
  end
end
