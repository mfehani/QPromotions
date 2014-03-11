class Promotion < ActiveRecord::Base
  has_one :user
  has_many :tags
  has_many :branches
  has_many :categories
  attr_accessible :name, :discount, :description, :end_date, :user_id, :branch_id, :category_id
  
  
 # validates :name, :discount, :branch, :category, :description, :presence => true
#  validates :description, :length => {:maximum => 350}
 # validates :name, :length => {:maximum => 50}
end
