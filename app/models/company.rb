class Company < ApplicationRecord
    has_many :job_offers
    has_many :job_applications, through: :job_offers

    validate :name, presence: true
    validate :industry, presence: true
    validate :email, presence: true
    validate :description, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
