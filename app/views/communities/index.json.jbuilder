json.array!(@communities) do |community|
  json.extract! community, :id, :name, :promotion_id
  json.url community_url(community, format: :json)
end
