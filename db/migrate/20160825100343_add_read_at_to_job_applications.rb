class AddReadAtToJobApplications < ActiveRecord::Migration[5.0]
  def up
    add_column :job_applications, :read_at, :datetime
  end

  def down
    remove_column :job_applications, :read_at, :datetime
  end
end
