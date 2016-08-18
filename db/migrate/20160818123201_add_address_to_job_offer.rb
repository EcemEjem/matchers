class AddAddressToJobOffer < ActiveRecord::Migration[5.0]
  def change
    add_column :job_offers, :address, :string
  end
end
