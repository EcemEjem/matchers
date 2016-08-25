class AddEmployeeIdToWorkExperience < ActiveRecord::Migration[5.0]
  def change
    add_reference :work_experiences, :employee, foreign_key: true
  end
end
