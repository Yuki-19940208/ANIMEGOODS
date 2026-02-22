class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @itms = @user.itms
    @itm = itm.new
  end

  def edit
  end
end
