class Company::Account::JobsController < ApplicationController
    before_action :set_job_offer, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = current_company.job_offers
  end

  def show
  end

  def new
    @job = JobOffer.new
  end

  def create
    @job = JobOffer.new(job_params)
    @job.company = current_company
    @job.save
    redirect_to company_account_profile_path

  end

  def edit
  end

  def update
    @job.update(job_params)
    redirect_to company_account_profile_path
  end

  def destroy
    @job.destroy
    redirect_to company_account_profile_path
  end

  private

  def job_params
    params.require(:job_offer).permit(:city, :event, :start_date, :end_date, :address, :wage, :job_description, :photo)
  end

  def set_job_offer
    @job = current_company.job_offers.find(params[:id])
  end

end
