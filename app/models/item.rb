class Item < ActiveRecord::Base
  attr_accessible :category, :condition, :description, :name, :user_id
  belongs_to :request
  belongs_to :user
  
  before_save { |item| item.category = category.split(' ').map{|c| c.capitalize}.join(' ') }
  
  validates :user_id, presence: true
  validates :category, presence: true, length: {minimum: 3, maximum: 30}
  validates :description, presence: true
  validates :name, presence: true, length: {minimum: 3, maximum: 30}
end