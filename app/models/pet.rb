class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: { in: %w(dog cat rabbit snake hamster), message: "%{value} is not a valid species" }
end
