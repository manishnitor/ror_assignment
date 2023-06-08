class Enrollment < ApplicationRecord
  enum :method_of_contact, { phone: 0, email: 1 }
  belongs_to :participant
  belongs_to :registry
  belongs_to :coordinator
  validates :participant, uniqueness: { scope: :registry }
  validates_with EnrollmentValidator


end
