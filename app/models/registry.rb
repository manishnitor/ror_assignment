class Registry < ApplicationRecord
  validates :name, :location, presence: true
  validates :name, uniqueness: { scope: :location }

  enum :state, { closed: 0, open: 1 }
  has_many :coordinator_registries
  has_many :coordinators, through: :coordinator_registries
  has_many :enrollments

end
