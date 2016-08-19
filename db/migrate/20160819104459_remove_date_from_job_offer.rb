class RemoveDateFromJobOffer < ActiveRecord::Migration[5.0]
  def up
    remove_column :job_offers, :date, :integer
  end

  def down
    add_column :job_offers, :date, :integer
  end
end
