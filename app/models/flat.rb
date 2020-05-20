class Flat < ApplicationRecord
  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :description, length: { minimum: 30 }
  validates :price_per_night, numericality: { only_integer: true },
                              inclusion: { in: (10..5000) }
  validates :number_of_guests, numericality: { only_integer: true },
                               inclusion: { in: (1..50) }
end
