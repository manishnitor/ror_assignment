class AddParticipantIdToEnrollments < ActiveRecord::Migration[7.0]
  def change
    add_column :enrollments, :participant_id, :integer
    add_column :enrollments, :registry_id, :integer
    add_column :enrollments, :coordinator_id, :integer
  end
end
