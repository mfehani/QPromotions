class Promotion < ActiveRecord::Base
  has_one :user
  has_many :tags
  has_many :branches
  has_many :categories
  belongs_to :community
  attr_accessible :name, :discount, :description, :end_date, :user_id, :pimage
  mount_uploader :pimage, PimageUploader
  
  
 # validates :name, :discount, :branch, :category, :description, :presence => true
#  validates :description, :length => {:maximum => 350}
 # validates :name, :length => {:maximum => 50}
end
