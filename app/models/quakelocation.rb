class Quakelocation < ApplicationRecord
#attr_accessor :adgress, :latitude, :longitude
  geocoded_by :full_street_address
  after_validation :geocode, :if => :address_changed?
  
  
    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
          Quakelocation.create!row.to_hash
      end    
    end

end
