class User < ActiveRecord::Base
  attr_accessible :email, :is_admin, :name, :password_digest, :specific_location
end
