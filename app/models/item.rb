class Item < ActiveRecord::Base
  attr_accessible :category_id, :condition, :description, :name, :user_id
  belongs_to :requests
  belongs_to :user
  belongs_to :category
end
