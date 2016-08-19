class AddEndDateToJobOffer < ActiveRecord::Migration[5.0]
  def up
    add_column :job_offers, :end_date, :date
  end

  def down
    remove_column :job_offers, :end_date, :date
  end
end
