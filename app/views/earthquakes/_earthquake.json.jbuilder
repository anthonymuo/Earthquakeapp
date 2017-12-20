json.extract! earthquake, :id, :time, :latitude, :longitude, :depth, :mag, :magType, :nst, :gap, :dmin, :rms, :networkCode, :quakeId, :created_at, :updated_at
json.url earthquake_url(earthquake, format: :json)
