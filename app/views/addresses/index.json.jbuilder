json.array!(@addresses) do |address|
  json.extract! address, :id, :postal_code, :address, :apartment, :city, :province
  json.url address_url(address, format: :json)
end
