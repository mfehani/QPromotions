class Promotion < ActiveRecord::Base
  has_one :user
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :branches
  has_many :categories
  belongs_to :community
  attr_accessible :name, :discount, :description, :end_date, :user_id, :pimage#, :branches_to_be_added, :categories_to_be_added, :tags_to_be_added
  mount_uploader :pimage, PimageUploader
  accepts_nested_attributes_for :tags
  accepts_nested_attributes_for :branches
  accepts_nested_attributes_for :categories
  
  
 # validates :name, :discount, :branch, :category, :description, :presence => true
#  validates :description, :length => {:maximum => 350}
 # validates :name, :length => {:maximum => 50}
end
