class Category < ActiveRecord::Base
  attr_accessible :name, :promotion_id
  has_many :promotion_categories
  has_many :promotions, :through => :promotion_categories
end
