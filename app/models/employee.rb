class Employee < ApplicationRecord
  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :photo, PhotoUploader

  has_many :job_applications
  has_many :job_offers, through: :job_applications

  validates :first_name,     presence: true, on: :update
  validates :last_name,      presence: true, on: :update
  validates :gender,         presence: true, on: :update
  validates :age,            presence: true, on: :update

  validates_format_of :email, without: TEMP_EMAIL_REGEX, on: :update

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, omniauth_providers: [:linkedin]

  def self.find_for_linkedin_oauth(auth)
    email = auth.info.email
    temporary_email = "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com"

    # Get the employee if it already exists based on linkedin token
    employee = Employee.where(uid: auth.uid, provider: auth.provider).first

    # Check if employee is already signed up with email only
    employee ||= Employee.where(email: email).first

    # Instantiate a new employee if not found
    employee ||= Employee.new(
      email:    email.present? ? email : temporary_email,
      password: Devise.friendly_token[0,20],
      # Employee profile
      first_name:         auth.info.first_name,
      last_name:          auth.info.last_name,
      linkedin_photo_url: auth.info.image,
      location:           auth.info.location,
      headline:           auth.info.headline
    )

    # Linkedin credentials
    employee.uid      = auth.uid
    employee.provider = auth.provider

    employee.save
    employee # important to always return employee instance
  end

  def email_verified?
    self.email && self.email !~ TEMP_EMAIL_REGEX
  end

end


