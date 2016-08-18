class AddWageToJobOffer < ActiveRecord::Migration[5.0]
  def change
    add_column :job_offers, :wage, :integer
  end
end
