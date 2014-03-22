class Tag < ActiveRecord::Base
  attr_accessible :name, :promotion_id
  has_many :promotion_tags
  has_many :promotions, :through => :promotion_tags
end
