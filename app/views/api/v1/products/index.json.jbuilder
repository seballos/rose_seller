json.array!(@products) do |product|
  json.extract! product, :name, :caption, :description
  json.images do
    json.thumb product.image.url(:thumb)
    json.medium product.image.url(:medium)
  end
  json.url product_url(product, format: :json)
end
