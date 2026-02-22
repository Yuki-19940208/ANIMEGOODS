class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @s = @user.books
    @book = Book.new
  end

  def edit
  end
end
