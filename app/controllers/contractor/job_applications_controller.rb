class JobApplicationsController < ApplicationController
  def new
    @job_applications = JobApplication.new
  end

  def create
    @job_applications = JobApplication.new(job_applications_params)
    @job_applications.save!
    redirect_to job_applications(job_applications)
  end
end

private
def job_applications_params
  params.require(job_applications).permit(:employee_id, :job_offer_id, :status)
end