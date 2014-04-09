json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :name, :discount, :description, :end_date
  json.url promotion_url(promotion, format: :json)
end
