class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @is = @user.is
    @i = i.new
  end

  def edit
  end
end
