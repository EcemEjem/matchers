
  class Company::RegistrationsController < Devise::RegistrationsController
    def sign_up_params
       params.require(:company).permit(:name, :industry, :description, :email, :password, :photo, :photo_cache)
    end
  end
