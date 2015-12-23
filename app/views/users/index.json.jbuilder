json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :address
  json.url user_url(user, format: :json)
end
