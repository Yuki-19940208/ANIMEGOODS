class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @items = @user.items
    @item = Item.new
  end

  def edit
  end
end
