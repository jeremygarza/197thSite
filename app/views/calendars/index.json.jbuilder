json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :date, :start_time, :end_time, :audience, :event_notes, :instructor, :uniform, :location, :risk_level, :reference
  json.url calendar_url(calendar, format: :json)
end
