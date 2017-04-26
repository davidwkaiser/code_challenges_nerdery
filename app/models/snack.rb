class Snack < ApplicationRecord
  validates :name, presence: true
  #:location, presence: true #confirm if location validated here
  # validates :name, length: { maximum: 200,
  #       too_long: "%{count} characters is the maximum allowed" }

  # has_many :locations
  has_many :users, :through => :votes

end
