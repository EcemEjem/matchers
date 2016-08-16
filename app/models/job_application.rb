class JobApplication < ApplicationRecord
  belongs_to :employees
  belongs_to :job_offers

  validate :status, presence: true
end
