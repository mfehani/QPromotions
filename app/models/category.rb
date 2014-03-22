class Category < ActiveRecord::Base
  has_many :promotion_categories
  has_many :promotions, :through => :promotion_categories
  attr_accessible :name, :promotion_id
end
