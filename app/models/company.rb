class Company < ApplicationRecord
    has_many :job_offers
    has_many :job_applications, through: :job_offers

    validates :name,         presence: true
    validates :industry,     presence: true
    validates :email,        presence: true
    validates :description,  presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
