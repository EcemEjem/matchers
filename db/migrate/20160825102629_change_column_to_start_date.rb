class ChangeColumnToStartDate < ActiveRecord::Migration[5.0]
  def change
    remove_column :work_experiences, :time
    add_column :work_experiences, :start_date, :date
    add_column :work_experiences, :end_date, :date
  end
end
