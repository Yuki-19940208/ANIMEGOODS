class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @いs = @user.いs
    @い = い.new
  end

  def edit
  end
end
