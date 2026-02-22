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
    @book = Book.find(params[:id])
    @user = @book.user
    @new_book = Book.new
  end
  private

  def item_params
    params.require(:item).permit(:title, :body)
  end
end