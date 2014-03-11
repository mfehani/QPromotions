class Category < ActiveRecord::Base
  has_many :promotions
  attr_accessible :name, :promotion_id
end
