class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @itmss = @user.itmss
    @itms = itms.new
  end

  def edit
  end
end
