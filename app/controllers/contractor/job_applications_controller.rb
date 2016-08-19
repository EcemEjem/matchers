class Contractor::JobApplicationsController < ApplicationController
  before_action :authenticate_employee!
  before_action :set_job_offer

  def new
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    @job_application.employee = current_employee
    @job_application.job_offer = @job_offer
    @job_application.status = "Pending"
    # We set manually the status of the app, we don't want empl. to set it again.

    if @job_application.save
      redirect_to contractor_account_profile_path
    else
      render 'new'
    end
  end

  private

  def job_application_params
    params.require(:job_application).permit(:motivation_letter)
  end

  def set_job_offer
    @job_offer = JobOffer.find(params[:job_id])
  end

end
