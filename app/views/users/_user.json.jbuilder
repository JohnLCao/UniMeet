json.extract! user, :id, :name, :age, :bio, :bool_drink, :party, :study, :commute, :created_at, :updated_at
json.url user_url(user, format: :json)
