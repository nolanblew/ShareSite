class User < ActiveRecord::Base
  attr_accessible :email, :is_admin, :name, :password_digest, :specific_location

  before_save { |user| user.email = email.downcase }
  validates :name, presence: true, length: {maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensivtive: false}
end
