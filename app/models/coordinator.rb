class Coordinator < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true
  has_many :coordinator_registries
  has_many :registries, through: :coordinator_registries
  has_many :enrollments
  has_many :participants, through: :enrollments
end
