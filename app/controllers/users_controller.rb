class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to '/top'
  end

  def index
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:user).permit(:name, :introduction)
  end
end
