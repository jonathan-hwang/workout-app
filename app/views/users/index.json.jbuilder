json.array!(@users) do |user|
  json.extract! user, :firstName, :lastName, :email, :age, :gender
  json.url user_url(user, format: :json)
end