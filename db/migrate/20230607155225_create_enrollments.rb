class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.date :date_of_enrollment
      t.integer :method_of_contact
      t.string :remarks

      t.timestamps
    end
  end
end
