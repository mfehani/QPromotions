json.array!(@branches) do |branch|
  json.extract! branch, :id, :name, :vendor_id, :promotion_id
  json.url branch_url(branch, format: :json)
end
