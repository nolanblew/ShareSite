class RequestsController < ApplicationController
  before_filter :signed_in_user

  def new
    @request = Request.new
  end
  
  def create
  	@request = Request.create(:item_id =>  params["item_id"])
    TheMail.request_notification("somebody", "something")
    if @request.save
      redirect_to '/items/index'
    else
      render 'new'
	end
  end

  def edit
  end

  def delete
  end
end
