class ItemController < ApplicationController
def create
	@item = Item.new(params[:item])
	if @item.save
      redirect_to '/item/index'
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
  end

  def edit
    @item = Item.find(params[:id])
  end

  def index
    @title = "Index"
  end
end
