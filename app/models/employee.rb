class Employee < ApplicationRecord
  has_many :job_applications
  has_many :job_offers, through: :job_applications

  validates :first_name,     presence: true
  validates :last_name,      presence: true
  validates :email,          presence: true
  validates :gender,         presence: true
  validates :age,            presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
