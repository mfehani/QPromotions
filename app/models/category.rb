class Category < ActiveRecord::Base
  attr_accessible :name, :promotion_id
 # has_and_belongs_to_many :promotions
  has_many :promotions, :through => :promotions_categories
end
