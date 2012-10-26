class RequestsController < ApplicationController
  before_filter :signed_in_user

  def new
  	@request = Request.create(:item_id =>  params["item_id"])
    TheMail.request_notification("somebody", "something")
  end

  def edit
  end

  def delete
  end
end
