class PromotionTag < ActiveRecord::Base
  belongs_to :promotion
  belongs_to :tag
  attr_accessible :promotion_id, :tag_id
end
