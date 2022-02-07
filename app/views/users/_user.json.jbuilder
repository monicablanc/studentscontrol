json.extract! user, :id, :name_user, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
