class Snack < ApplicationRecord
  validates :name, :location, presence: true #confirm if location validated here
  validates :name, length: { maximum: 200,
        too_long: "%{count} characters is the maximum allowed" }

  has_many :locations
end
