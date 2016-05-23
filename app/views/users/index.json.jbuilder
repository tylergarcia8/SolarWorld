json.array!(@users) do |user|
  json.extract! user, :id, :name, :age, :address, :interest
  json.url user_url(user, format: :json)
end
