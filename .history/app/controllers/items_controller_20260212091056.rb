class ItemsController < ApplicationController
  def index
    @ = .new
    @books = Book.all
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to item_path(@item)
  end

  private

  def item_params
    params.require(:item).permit(:title, :body)
  end
end