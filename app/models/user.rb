class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :utype, :name, :email, :dob, :nationality, :address, :number, :password, :password_confirmation, :community_id
  has_many :promotions
  has_many :branches
  belongs_to :community
end
