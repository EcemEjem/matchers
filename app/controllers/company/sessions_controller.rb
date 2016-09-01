class Company::SessionsController < Devise::SessionsController

  def after_sign_in_path_for(resource)
    company_account_profile_path
  end

  #def after_sign_out_path_for(resource)
  # add path here for after company sign out
  #end
end

