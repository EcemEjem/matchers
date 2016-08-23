class Contractors::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    profile = Profile.find_for_linkedin_oauth(request.env['omniauth.auth'])

    if profile.persisted?
      sign_in_and_redirect profile, event: :authentication
      set_flash_message(:notice, :success, kind: 'linkedin') if is_navigational_format?
    else
      session['devise.linkedin_data'] = request.env['omniauth.auth']
      redirect_to new_employee_registration #need to change the path
    end
  end
end

# Need to finish this page