json.extract! location, :id, :city, :county, :country, :created_at, :updated_at
json.url location_url(location, format: :json)