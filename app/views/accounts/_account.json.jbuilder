json.extract! account, :id, :first_name, :last_name, :gender, :age, :created_at, :updated_at
json.url account_url(account, format: :json)
