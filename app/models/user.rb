class User < ActiveRecord::Base
  attr_accessible :email, :is_admin, :name, :password_digest, :specific_location
  has_many :item
  has_many :requests
  has_many :rating
end
