json.array!(@owners) do |owner|
  json.extract! owner, :id, :first_name, :last_name, :email, :phone_number
  json.url owner_url(owner, format: :json)
end
