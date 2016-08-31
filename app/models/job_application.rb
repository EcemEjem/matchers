class JobApplication < ApplicationRecord
  belongs_to :employee
  belongs_to :job_offer

  validates :status, presence: true
  validates :motivation_letter, presence: true

  def duration
    if self.end_date && self.start_date
      (( self.end_date - self.start_date ).to_i / 365 )
    else
      0
    end
  end
end
