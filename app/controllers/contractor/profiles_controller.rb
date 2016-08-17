class ProfilesController < ApplicationController
  before_action = set_profile, only: [:edit, :update]

  def edit
    @profile = Profile.find(profile_params[:id])
  end

  def update
    @profile = Profile.find(set_profile)
    @profile.update(profile_params)
    redirect_to profile_path(@profile)

  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :age, :gender, :location, :availability)
  end

  def set_profile
    @profile = Profile.find(profile_params[:id])
  end

end
