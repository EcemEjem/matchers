class Company::RegistrationsController < Devise::RegistrationsController
  def sign_up_params
     params.require(:company).permit(:name, :industry, :description, :email, :password, :photo, :photo_cache)
  end

  def after_sign_up_path_for(resource)
    company_account_profile_path
  end

  # def after_sign_out_path_for(resource)

  # end
end
