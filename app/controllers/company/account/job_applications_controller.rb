class Company::JobApplicationsController < ApplicationController
  before_action :authenticate_company!

  def show
    @job = Job.find(params[:id])
  end

  def accept
  end

  def decline
  end

end
