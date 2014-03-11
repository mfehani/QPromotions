class Tag < ActiveRecord::Base
  attr_accessible :name, :promotion_id
  belongs_to :promotion
end
