class PromotionCategory < ActiveRecord::Base
  belongs_to :promotion
  belongs_to :category
end
