class Company::Account::JobsController < Company::BaseController
    before_action :set_job_offer, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = current_company.job_offers
  end

  def show
    @job.job_applications.each do |job_application|
      job_application.update(read_at: Time.now)
    end
  end

  def new
    @job = JobOffer.new
  end

  def create
    @job = JobOffer.new(job_params)
    @job.company = current_company
    @job.save
    redirect_to company_account_profile_path(current_company)
  end

  def edit
  end

  def update
     if @job.update(job_params)
      redirect_to company_account_root_path
    else
      flash[:alert] = "Please fill all the required fields."
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to company_account_profile_path
  end

  private

  def job_params
    params.require(:job_offer).permit(:name, :city, :event, :start_date, :end_date, :address, :wage, :job_description, :photo, :photo_cache)
  end

  def set_job_offer
    @job = current_company.job_offers.find(params[:id])
  end

end
