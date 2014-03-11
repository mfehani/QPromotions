class PromotionBranch < ActiveRecord::Base
  belongs_to :promotion
  belongs_to :branch
end
