class BooksController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する
    @book = Book.new
  end

  def index
  end

  def show
  end

  def edit
  end
end
