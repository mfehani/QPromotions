json.array!(@users) do |user|
  json.extract! user, :id, :type, :name, :email, :dob, :community, :nationality, :address, :number
  json.url user_url(user, format: :json)
end
