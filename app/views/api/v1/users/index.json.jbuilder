json.users do
  json.array! @users do |user|
    json.extract! user, :id, :name, :email, :phone_number, :role
  end
end
