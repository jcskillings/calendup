json.array!(@lists) do |list|
  json.extract! list, :id, :name, :creatorUserID, :numShared
  json.url list_url(list, format: :json)
end
