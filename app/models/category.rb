class Category < ActiveRecord::Base
  belongs_to :promotions
  has_many :promotions
  attr_accessible :name, :promotion_id
end
