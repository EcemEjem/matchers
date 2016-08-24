class Contractor::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    employee = Employee.find_for_linkedin_oauth(request.env['omniauth.auth'])

    if employee.persisted?
      sign_in_and_redirect employee, event: :authentication
      set_flash_message(:notice, :success, kind: 'linkedin') if is_navigational_format?
    else
      auth = request.env['omniauth.auth'].dup
      auth.delete("extra")

      session['devise.linkedin_data'] = auth
      redirect_to new_employee_registration_path #need to change the path
    end
  end
end