class AddStartDateToJobOffer < ActiveRecord::Migration[5.0]
  def up
    add_column :job_offers, :start_date, :date
  end

  def down
    remove_column :job_offers, :start_date, :date
  end
end
