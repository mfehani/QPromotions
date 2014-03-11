json.array!(@promotion_branches) do |promotion_branch|
  json.extract! promotion_branch, :id, :branch_id, :promotion_id
  json.url promotion_branch_url(promotion_branch, format: :json)
end
