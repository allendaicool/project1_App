json.array!(@cars) do |car|
  json.extract! car, :make, :model, :mileage, :color, :owner_id
  json.url car_url(car, format: :json)
end