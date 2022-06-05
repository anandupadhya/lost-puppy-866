class Pet < ApplicationRecord
  SPECIES = %w(dog cat rabbit snake hamster)

  validates :name, presence: true
  validates :address, presence: true
  validates :species, presence: true
  validates :species, inclusion: { in: SPECIES, message: "That doesn't look right..." }
end
