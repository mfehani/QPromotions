json.array!(@user.promotions) do |tag|
  json.extract! promotion, :name, :discount
end
