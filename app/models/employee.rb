class Employee < ApplicationRecord
  has_many :job_applications
  has_many :job_offers, through: :job_applications

  validate :first_name, presence: true
  validate :last_name, presence: true
  validate :email, presence: true
  validate :gender, presence: true
  validate :age, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
