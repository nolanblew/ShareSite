class RequestsController < ApplicationController
  def new
  	@request = Request.create(:item_id =>  params["item_id"])
  end

  def edit
  end

  def delete
  end
end
