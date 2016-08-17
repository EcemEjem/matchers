class Contractor::ProfilesController < ApplicationController
  before_action :authenticate_employee!
  before_action :set_profile

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to edit_contractor_profile_path
    else
      flash[:alert] = "Fill all the required fields"
      render :edit
    end
  end

  private

  def profile_params
    params.require(:employee).permit(:first_name, :last_name, :age, :gender, :location, :availability)
  end

  def set_profile
    @profile = current_employee
  end

end
