class PromotionCategory < ActiveRecord::Base
  belongs_to :promotion
  belongs_to :category
  attr_accessible :promotion_id, :category_id
end
