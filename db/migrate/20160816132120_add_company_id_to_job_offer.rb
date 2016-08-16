class AddCompanyIdToJobOffer < ActiveRecord::Migration[5.0]
  def change
    add_reference :job_offers, :company, foreign_key: true
  end
end
