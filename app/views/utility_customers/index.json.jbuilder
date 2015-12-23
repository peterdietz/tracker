json.array!(@utility_customers) do |utility_customer|
  json.extract! utility_customer, :id, :utility_id, :user_id, :accountNumber
  json.url utility_customer_url(utility_customer, format: :json)
end
