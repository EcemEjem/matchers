class Contractor::Account::WorkExperiencesController < Contractor::BaseController
  before_action :set_work_experience, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @work_experience = WorkExperience.new
  end

  def create
    work_experience = WorkExperience.new(work_experience_params)
    work_experience.employee = current_employee
    if work_experience.save!
      redirect_to contractor_account_work_experience_path(work_experience)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_work_experience
    @work_experience = WorkExperience.find(params[:id])
  end

  def work_experience_params
    params.require(:work_experience).permit(:industry, :experience, :company, :title, :time, :description)
  end
end

