class Item < ActiveRecord::Base
  attr_accessible :category, :condition, :description, :name, :user_id
  belongs_to :request
  belongs_to :user
  
  validates :user_id, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :name, presence: true
end