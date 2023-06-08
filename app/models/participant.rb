class Participant < ApplicationRecord
  enum :gender, { male: 0, female: 1 }
  has_many :registries , -> { distinct }, through: :enrollments
  has_many :enrollments
end
# Participant.where("strftime('%Y', date_of_birth) = ?", 1993.to_s)
# Participant.joins(:enrollments).where(gender:"male", enrollments: {coordinator_id: Coordinator.find_by(email:"manish@gmail.com").id}).distinct.count