class ItemsController < ApplicationController
  def index
    @items = Item.order('id ASC').limit(20)
  end

  def show
  end

  def new
    @item = Item.new
  end

  def search
  	 @items = Item.where('name LIKE(?)', "%#{params[:keyword]}%").limit(44)
     # @count = Item.find(params[:keyword])
  end
end
