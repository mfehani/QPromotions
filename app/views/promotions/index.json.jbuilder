json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :name, :discount, :branch, :category, :location, :description, :valid
  json.url promotion_url(promotion, format: :json)
end
