# class Location < ApplicationRecord
#   validates :location, presence: true
#   validates :location, length: { maximum: 50,
#         too_long: "%{count} characters is the maximum allowed" }
#   validates :latitude, :longitude, numericality: true
#   validates_inclusion_of :latitude, in -90..90
#   validates_inclusion_of :longitude, in -180..180

#   has_many :snacks
# end
