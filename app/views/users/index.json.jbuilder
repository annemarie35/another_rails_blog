json.array!(@users) do |user|
  json.extract! user, :id, :name, :created_at, :updated_at, :admin, :email, :password_digest, :reset_password_key
  json.url user_url(user, format: :json)
end
