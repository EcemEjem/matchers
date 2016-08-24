class AddUidAndProviderAndLinkedinPhotoUrlAndHeadlineToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :uid, :string
    add_column :employees, :provider, :string
    add_column :employees, :linkedin_photo_url, :string
    add_column :employees, :headline, :string
  end
end
