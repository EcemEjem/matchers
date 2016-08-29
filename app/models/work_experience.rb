class WorkExperience < ApplicationRecord
  belongs_to :employee

  validates :industry,    presence: true, on: :update
  validates :experience,  presence: true, on: :update
  validates :company,     presence: true, on: :update
  validates :title,       presence: true, on: :update
  validates :description, presence: true, on: :update
  validates :start_date,  presence: true, on: :update
  validates :end_date,    presence: true, on: :update

  def duration
    if self.end_date && self.start_date
    (( self.end_date - self.start_date ).to_i / 365 )
  else
    0
  end
  end
end
