class Company::Account::JobApplicationsController < Company::BaseController

  def show
    @job_application = JobApplication.find(params[:id])
    @job_application.read_at = Time.now
    @job_application.save!
  end

  def accept
    @job_application = JobApplication.find(params[:id])
    @job_application.update(status: "accepted")
    redirect_to company_account_job_application_path(@job_application)
  end

  def decline
    @job_application = JobApplication.find(params[:id])
    @job_application.update(status: "declined")
    redirect_to company_account_job_application_path(@job_application)
  end

end
