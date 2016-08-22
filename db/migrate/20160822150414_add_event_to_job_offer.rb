class AddEventToJobOffer < ActiveRecord::Migration[5.0]
  def change
    add_column :job_offers, :event, :string
  end
end
