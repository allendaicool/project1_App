json.array!(@owners) do |owner|
  json.extract! owner, :name, :age, :phoneNumber
  json.url owner_url(owner, format: :json)
end