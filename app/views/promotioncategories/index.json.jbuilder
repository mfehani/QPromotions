json.array!(@promotioncategories) do |promotioncategory|
  json.extract! promotioncategory, :id, :promotion_id, :category_id
  json.url promotioncategory_url(promotioncategory, format: :json)
end
