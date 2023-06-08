class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.string :name
      t.integer :gender
      t.date :date_of_birth

      t.timestamps
    end
  end
end
