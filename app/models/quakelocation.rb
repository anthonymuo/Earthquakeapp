class Quakelocation < ApplicationRecord
#attr_accessor :adgress, :latitude, :longitude
  geocoded_by :full_street_address
  after_validation :geocode, :if => :address_changed?

end
