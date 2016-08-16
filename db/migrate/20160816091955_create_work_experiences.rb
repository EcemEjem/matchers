class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.string :industry
      t.integer :experience
      t.string :company
      t.string :title
      t.integer :time
      t.string :description

      t.timestamps
    end
  end
end
