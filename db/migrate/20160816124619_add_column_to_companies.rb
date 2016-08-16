class AddColumnToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :name, :string
    add_column :companies, :industry, :string
    add_column :companies, :description, :string
  end
end
