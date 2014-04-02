class Branch < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :promotions
#  has_many :promotions, :through => :promotions_branches
  attr_accessible :name, :user_id
  
end
