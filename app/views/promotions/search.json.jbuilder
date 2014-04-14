json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :name, :discount, :description, :pimage, :end_date
  json.url promotion_url(promotion, format: :json)
end
