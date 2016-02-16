json.array!(@option_types) do |option_type|
  json.extract! option_type, :id, :name, :description
  json.url option_type_url(option_type, format: :json)
end
