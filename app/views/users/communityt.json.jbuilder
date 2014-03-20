json.array!(@promotion.community) do |community|
  json.extract! community, :name
end
