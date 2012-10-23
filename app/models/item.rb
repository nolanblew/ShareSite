class Item < ActiveRecord::Base
  attr_accessible :category_id, :condition, :description, :name, :user_id
  belongs_to :request
  belongs_to :user
  belongs_to :category
  
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :description, presence: true
  validates :condition, presence: true
  validates :name, presence: true
end