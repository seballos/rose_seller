json.array!(@products) do |product|
  json.extract! product, :id, :sku, :name, :offer, :caption, :description, :image
  json.url product_url(product, format: :json)
end
