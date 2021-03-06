class RequestsController < ApplicationController
  before_filter :signed_in_user

  def new
    @request = Request.new
  end
  
  def create
  	@request = Request.create(:item_id =>  params["item_id"], :user_id => current_user.id)
	puts @request
	@item = Item.find_by_id(@request[:item_id])
	@user = User.find_by_id(@item[:user_id])
	#Send the email
	SGmailer.email(@user.email, "ShareThings - Someone Sent You A Request", @item, @user).deliver
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
