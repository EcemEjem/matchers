class AddPhotoToJobOffer < ActiveRecord::Migration[5.0]
  def change
    add_column :job_offers, :photo, :string
  end
end
