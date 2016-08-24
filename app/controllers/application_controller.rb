class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :industry, :description])
  end

  # to add more things to the log-in
  # added sanitizer here for the companies as we need more things for companies
  # other than what's provided with device (log-in and password)
  # so companies: we'll add to views-companies-registrations-new.html.erb
  # for /companies/sign-up:
  # name, industry and description fields.

end
