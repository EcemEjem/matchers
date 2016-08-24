class Company::JobApplicationsController < ApplicationController

  def show
    @job_application = Job.find(params[:id])
  end

  def accept
  end

  def decline
  end

end
