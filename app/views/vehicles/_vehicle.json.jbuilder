json.extract! vehicle, :id, :make, :model, :year, :trim, :horsepower, :number_of_cylinders, :engine_displacement, :valves_per_cylinder, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
