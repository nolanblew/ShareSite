class Item < ActiveRecord::Base
  attr_accessible :category_id, :condition, :description, :name, :user_id
end
