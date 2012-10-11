class User < ActiveRecord::Base
  attr_accessible :email, :is_admin, :name, :password, :password_confirmation, :specific_location
  has_secure_password

  before_save { |user| user.email = email.downcase }

  validates :name, presence: true, length: {maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensivtive: false}
  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true
end
