class AddColumnToJobOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :job_offers, :name, :string
    add_column :job_offers, :city, :string
    add_column :job_offers, :date, :integer
  end
end
