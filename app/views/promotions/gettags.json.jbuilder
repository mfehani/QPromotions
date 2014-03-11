json.array!(@promotion.tags) do |tag|
  json.extract! tag, :name
end
