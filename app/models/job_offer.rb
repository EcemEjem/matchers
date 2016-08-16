class JobOffer < ApplicationRecord
  belongs_to :companies
  
  has_many :job_applications
  has_many :employees, through: :job_applications

  validate :name, presence: true
  validate :city, presence: true
  validate :date, presence: true
end
