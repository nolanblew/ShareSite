class RequestsController < ApplicationController
  before_filter :signed_in_user

  def new
  	@request = Request.new
  end

  def edit
  end

  def delete
  end
end
