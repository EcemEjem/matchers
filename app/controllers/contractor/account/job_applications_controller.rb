class Contractor::Account::JobApplicationsController < ApplicationController
  before_action :authenticate_employee!

  def index
    @job_applications = current_employee.job_applications
  end
end
