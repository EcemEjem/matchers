class Company::Account::JobApplicationsController < Company::BaseController

  def show
    @job_application = current_company.job_applications.find(params[:id])
    @job_application.read_at = Time.now
    @job_application.save!
  end

  def accept
  end

  def decline
  end

end
