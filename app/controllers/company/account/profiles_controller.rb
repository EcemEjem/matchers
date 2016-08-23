class Company::Account::ProfilesController < Company::BaseController
  before_action :set_profile

  def show
    @job_offers = current_company.job_offers.order(created_at: :desc).limit(3)
    @job_applications = current_company.job_applications.order(created_at: :desc)
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to company_account_profile_path
    else
      flash[:alert] = "Please fill all the required fields."
      render :edit
    end
  end

  private

  def set_profile
    @profile = current_company
  end

  def profile_params
    params.require(:company).permit(:name, :industry, :description)
  end

end


