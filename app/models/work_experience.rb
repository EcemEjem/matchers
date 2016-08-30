class WorkExperience < ApplicationRecord
  belongs_to :employee

  validates :industry,    presence: true
  validates :experience,  presence: true
  validates :company,     presence: true
  validates :title,       presence: true
  validates :description, presence: true
  validates :start_date,  presence: true
  validates :end_date,    presence: true

  def duration
    if self.end_date && self.start_date
    (( self.end_date - self.start_date ).to_i / 365 )
  else
    0
  end
  end
end
