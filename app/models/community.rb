class Community < ActiveRecord::Base
  attr_accessible :name, :promotion_id, :user_id
  has_many :users
  has_many :promotions
end
