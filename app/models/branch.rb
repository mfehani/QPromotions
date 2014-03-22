class Branch < ActiveRecord::Base
  belongs_to :user
  has_many :promotion_branches
  has_many :promotions, :through => :promotion_branches
  attr_accessible :name
  
end
