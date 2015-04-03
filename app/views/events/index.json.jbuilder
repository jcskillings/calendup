json.array!(@events) do |event|
  json.extract! event, :id, :creatorInvCode, :name, :description, :startDate, :startTime, :endDate, :endTime, :private, :everyone, :friends, :family, :work, :school, :personal
  json.url event_url(event, format: :json)
end
