class AddJobDescriptionToJobOffer < ActiveRecord::Migration[5.0]
  def up
    add_column :job_offers, :job_description, :text
  end

  def down
    remove_column :job_offers, :job_description
  end
end
