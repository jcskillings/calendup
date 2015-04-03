json.array!(@friends) do |friend|
  json.extract! friend, :id, :name, :title, :nickname, :all, :family, :friend, :work, :school, :personal
  json.url friend_url(friend, format: :json)
end
