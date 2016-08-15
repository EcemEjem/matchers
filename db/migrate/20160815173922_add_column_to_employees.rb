class AddColumnToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :first_name, :string
    add_column :employees, :last_name, :string
    add_column :employees, :age, :integer
    add_column :employees, :gender, :string
    add_column :employees, :location, :string
    add_column :employees, :availability, :integer
  end
end
