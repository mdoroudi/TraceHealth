json.array!(@early_users) do |early_user|
  json.extract! early_user, :email
  json.url early_user_url(early_user, format: :json)
end
