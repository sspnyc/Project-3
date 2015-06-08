json.array!(@users) do |user|
  json.extract! user, :id, :enter_username
  json.url user_url(user, format: :json)
end
