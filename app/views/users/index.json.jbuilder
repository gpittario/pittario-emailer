json.array!(@users) do |user|
  json.extract! user, :id, :email, :preferred_color
  json.url user_url(user, format: :json)
end
