class BooksController < ApplicationController
  def index
    @user = current_user
    @books = Book.all
    @book = Book.new
  end

  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  @book = Book.find(params[:id])
  @book.update(book_params)
  redirect_to books_path
  end

# 投稿データの保存
  def create
  @book = Book.new(book_params)
  @book.user_id = current_user.id
  if @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to books_path
  else
    @books = Book.all
    render :index
  end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body,)
  end
end
