class Tag < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :promotions
#  has_many :promotions, :through => :promotions_tags
  
  def self.search(search)
    search_condition= '%' + search + '%'
    find(:all, :conditions => ['name LIKE ?', search_condition])
  end
end
