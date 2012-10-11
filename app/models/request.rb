class Request < ActiveRecord::Base
  attr_accessible :date_requested, :date_wanted_back, :is_accepted, :is_lended, :item_description, :item_id, :user_id
  belongs_to :user
  has_one :item
end
