class Contractor::Jobs::JobApplicationsController < ApplicationController
  def new
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    @job_application.employee = current_user
    @job_application.job = Job.find(job_id)
    if @job_application.save!
      redirect_to job_application(job_application)
    else
      render 'new'
    end
  end

  private
  def job_application_params
    params.require(job_application).permit(:employee_id, :job_id, :status)
  end
end