class JobApplication < ApplicationRecord
  belongs_to :employee
  belongs_to :job_offer

  validates :status, presence: true
  validates :motivation_letter, presence: true
end
