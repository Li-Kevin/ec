json.array!(@product_option_typeships) do |product_option_typeship|
  json.extract! product_option_typeship, :id, :product_id, :option_type_id
  json.url product_option_typeship_url(product_option_typeship, format: :json)
end
