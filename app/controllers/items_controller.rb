class ItemsController < ApplicationController
  before_filter :signed_in_user

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    @item.user_id = current_user.id
    if @item.save
      redirect_to '/items/index'
    else
      render 'new'
    end
  end

  def delete
    Item.find(params[:id]).destroy
    redirect_to :action => 'list' #not sure about this line?????
  end

  def details
  end

  #lists of all the items
  def list
    @item = Item.find(:all)
    @search_query = params['q']
  end

  def edit
    @item = Item.find(params[:id])
  end

  def index
    @title = "Index"
  end
end
