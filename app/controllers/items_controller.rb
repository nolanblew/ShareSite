class ItemsController < ApplicationController
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

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
 
    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
  end
    #Item.find(params[:id]).delete
    #redirect_to :action => 'list' 
  end

  def show
    @item = Item.find(params[:id])
 
  respond_to do |format|
    format.html  # show.html.erb
    format.json  { render :json => @item }
  end
  end

  #lists of all the items
  def list
    @item = Item.find(:all)
    @search_query = params['q']
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
  
    if @item.update_attributes(params[:item])
        redirect_to '/items/index'
      else
        render 'new'
    end
  end


  def index
    @title = "Index"
    @items = Item.all
    
    respond_to do |format|
      format.html
      format.json {render :json => @items }
    end
  end
end

