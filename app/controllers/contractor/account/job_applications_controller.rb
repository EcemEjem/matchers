class Contractor::Account::JobApplicationsController < Contractor::BaseController
  def index
    @job_applications = current_employee.job_applications
  end
end
