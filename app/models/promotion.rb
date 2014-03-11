class Promotion < ActiveRecord::Base
  has_one :user
  has_many :tags
  attr_accessible :name, :discount, :branch, :category, :description, :end_date, :user_id
  
  
 # validates :name, :discount, :branch, :category, :description, :presence => true
#  validates :description, :length => {:maximum => 350}
 # validates :name, :length => {:maximum => 50}
end
