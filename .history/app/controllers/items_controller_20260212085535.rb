class ItemsController < ApplicationController
  def index
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end