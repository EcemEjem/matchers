class JobApplication < ApplicationRecord
  # before_save do |job_application|
  #   puts ' i am a potato'
  # end

  belongs_to :employee
  belongs_to :job_offer

  validates :status, presence: true
  validates :motivation_letter, presence: true
end
