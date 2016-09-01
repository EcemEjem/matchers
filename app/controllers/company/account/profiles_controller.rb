class Company::Account::ProfilesController < Company::BaseController
  before_action :set_profile

  def show
    @job_offers = current_company.job_offers.order(created_at: :desc).limit(3)
    @job_applications = current_company.job_applications.order(created_at: :desc)
    get_suggested_employees
    @industry = []
    @suggested_employees.each do |suggested_employee|
      suggested_employee.work_experiences.each do |work|
          @industry << work.industry
       end
     end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to company_account_profile_path
    else
      flash[:alert1] = "Please fill all the required fields."
      render :edit
    end
  end

  private

  def set_profile
    @profile = current_company
  end

  def profile_params
    params.require(:company).permit(:name, :industry, :description, :photo, :photo_cache)
  end

  def get_suggested_employees
   #  @suggested_employees = []
   #  Employee.all.each do |employee|
   #    employee.work_experiences.each do |work_experience|
   #      if work_experience.industry == current_company.industry
   #        @suggested_employees << employee
   #      end
   #    end
   #  end
   # @suggested_employees = @suggested_employees.uniq
   @suggested_employees = Employee.all.select { |employee| employee.first_name != "Hey"}
  end
end


