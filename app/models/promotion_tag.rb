class PromotionTag < ActiveRecord::Base
  belongs_to :promotion
  belongs_to :tag
end
