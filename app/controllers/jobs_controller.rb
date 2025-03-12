class JobsController < ApplicationController
  def show
    @job = Job.find(params[:id])
    @formations_for_job = Formation.joins(:job_formations)
                                    .where(job_formations: { job_id: @job.id })
                                    .pluck(:name, :duration)
                                    .to_h

    @category_score = Category.joins(:choices).group("categories.name").sum("choices.score")
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream:
        turbo_stream.replace(:job_description, partial: "jobs/jobs_details",
            locals: { job: @job, job_formations: @job_formations })
      end
    end
  end
end
