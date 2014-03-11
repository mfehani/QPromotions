json.array!(@promotion_categories) do |promotion_category|
  json.extract! promotion_category, :id, :promotion_id, :category_id
  json.url promotion_category_url(promotion_category, format: :json)
end
