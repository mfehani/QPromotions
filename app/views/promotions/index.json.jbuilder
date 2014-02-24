json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :name, :discount, :branch, :category, :location, :description, :end_date
  json.url promotion_url(promotion, format: :json)
end
