class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @itmss = @user.itmss
    @itm = Item.new
  end

  def edit
  end
end
