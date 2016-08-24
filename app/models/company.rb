class Company < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :photo, PhotoUploader

  has_many :job_offers, dependent: :destroy
  has_many :job_applications, through: :job_offers

  validates :name,         presence: true, on: :update
  validates :industry,     presence: true, on: :update
  validates :description,  presence: true, on: :update
end
