class ItemsController < ApplicationController
  def index
    @item = Item.new
    @items = Item.all
    
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to item_path(@item)
  end

  def show
    @item = Item.find(params[:id])
    @user = @item.user
    @new_item = Item.new
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(@item.id)
  end
  private

  def item_params
    params.require(:item).permit(:title, :body)
  end
end
