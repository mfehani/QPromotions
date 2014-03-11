json.array!(@promotion_tags) do |promotion_tag|
  json.extract! promotion_tag, :id, :promotion_id, :tag_id
  json.url promotion_tag_url(promotion_tag, format: :json)
end
