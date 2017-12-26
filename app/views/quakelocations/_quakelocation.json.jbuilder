json.extract! quakelocation, :id, :address, :latitude, :longitude, :time, :mag, :created_at, :updated_at
json.url quakelocation_url(quakelocation, format: :json)
