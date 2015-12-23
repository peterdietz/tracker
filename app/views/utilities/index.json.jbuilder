json.array!(@utilities) do |utility|
  json.extract! utility, :id, :name, :website
  json.url utility_url(utility, format: :json)
end
