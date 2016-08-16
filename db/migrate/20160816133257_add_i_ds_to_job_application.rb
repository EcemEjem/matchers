class AddIDsToJobApplication < ActiveRecord::Migration[5.0]
  def change
    add_reference :job_applications, :employee, foreign_key: true
    add_reference :job_applications, :job_offer, foreign_key: true
  end
end
