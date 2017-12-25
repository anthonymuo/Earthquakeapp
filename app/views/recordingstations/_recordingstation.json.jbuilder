json.extract! recordingstation, :id, :quakeId, :updated, :place, :quaketype, :horizontalError, :depthError, :magError, :magNst, :status, :locationSource, :stationCode, :created_at, :updated_at
json.url recordingstation_url(recordingstation, format: :json)
