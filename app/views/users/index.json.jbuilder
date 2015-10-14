json.array!(@users) do |user|
  json.extract! user, :id, :name, :mobile_no, :emp_id, :email, :password
  json.url user_url(user, format: :json)
end
