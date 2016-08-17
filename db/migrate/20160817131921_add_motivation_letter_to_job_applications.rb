class AddMotivationLetterToJobApplications < ActiveRecord::Migration[5.0]
  def change
    add_column :job_applications, :motivation_letter, :text
  end
end
