class PromotionBranch < ActiveRecord::Base
  belongs_to :promotion
  belongs_to :branch
  attr_accessible :branch_id, :promotion_id
end
