class EmployeeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.employee_mailer.welcome.subject
  #
  def welcome(employee)
    @employee = employee # Instance variable => available in view

    mail(to: @employee.email, subject: 'Welcome to Matcher')
    # This will render a view in `app/views/user_mailer`!
  end

  def job_application_invitation()

  end
end

