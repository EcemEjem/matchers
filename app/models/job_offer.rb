class JobOffer < ApplicationRecord
  belongs_to :company

  has_many :job_applications, dependent: :destroy
  has_many :employees, through: :job_applications

  validates :name, presence: true
  validates :city, presence: true
end
