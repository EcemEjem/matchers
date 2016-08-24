class Company < ApplicationRecord
  has_many :job_offers, dependent: :destroy
  has_many :job_applications, through: :job_offers

  validates :name,         presence: true
  validates :industry,     presence: true
  validates :email,        presence: true
  validates :description,  presence: true
  
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
end
