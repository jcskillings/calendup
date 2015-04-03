json.array!(@users) do |user|
  json.extract! user, :id, :name, :title, :inviteCode
  json.url user_url(user, format: :json)
end
