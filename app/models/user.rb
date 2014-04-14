class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :utype, :name, :email, :dob, :nationality, :address, :number, :password, :password_confirmation, :community_id
  has_many :branches
  has_many :promotions
  belongs_to :community
  accepts_nested_attributes_for :branches
  
  validates :name, :email, :presence => true
 # validates :nationality, :length =>{:minimum => 3}
 # validates :name, :length => {:maximum => 50}
end
