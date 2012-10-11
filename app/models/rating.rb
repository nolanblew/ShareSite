class Rating < ActiveRecord::Base
  attr_accessible :requestee_id, :requestee_rating, :requestor_id, :requestor_rating
  belongs_to :user
end
