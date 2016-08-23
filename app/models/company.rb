class Company < ApplicationRecord
  has_many :job_offers, dependent: :destroy
  has_many :job_applications, through: :job_offers

  validates :name,         presence: true
  validates :industry,     presence: true
  validates :email,        presence: true
  validates :description,  presence: true
  
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  #devise :omniauthable, omniauth_providers: [:linkedin]
  #need to uncomment when controller is done

  def self.find_for_oauth(auth, signed_in_resource = nil)

   # Get the identity and user if they exist
   identity = Identity.find_for_oauth(auth)

   # If a signed_in_resource is provided it always overrides the existing user
   # to prevent the identity being locked with accidentally created accounts.
   # Note that this may leave zombie accounts (with no associated identity) which
   # can be cleaned up at a later date.
   user = signed_in_resource ? signed_in_resource : identity.user

   # Create the user if needed
   if user.nil?

     # Get the existing user by email if the provider gives us a verified email.
     # If no verified email was provided we assign a temporary email and ask the
     # user to verify it on the next step via UsersController.finish_signup
     email_is_verified = auth.info.email && (auth.info.verified || auth.info.verified_email)
     email = auth.info.email if email_is_verified
     user = User.where(:email => email).first if email

     # Create the user if it's a new registration
     if user.nil?
       user = User.new(
         #username: auth.info.nickname || auth.uid,
         email: email ? email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com",
         password: Devise.friendly_token[0,20]
         )
       user.save!
     end
   end

   # Associate the identity with the user if needed
   if identity.user != user
     identity.user = user
     identity.save!
   end
   user
 end
end
