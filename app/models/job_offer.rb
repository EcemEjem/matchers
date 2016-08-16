class JobOffer < ApplicationRecord
  belongs_to :company
  
  has_many :job_applications
  has_many :employees, through: :job_applications

  validates :name, presence: true
  validates :city, presence: true
  validates :date, presence: true
end
