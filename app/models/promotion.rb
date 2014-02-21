class Promotion < ActiveRecord::Base
  attr_accessible :name, :discount, :branch, :category, :location, :description, :valid
  
  validates :name, :discount, :branch, :category, :location, :description, :presence => true
  validates :description, :length => {:maximum => 350}
  validates :name, :length => {:maximum => 50}
end
