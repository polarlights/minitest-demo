json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :published_on
  json.url product_url(product, format: :json)
end
