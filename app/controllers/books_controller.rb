class BooksController < ApplicationController
  def top
  end

  # indexアクションを表示するための定義
  def index
    # 投稿を全件取得
    @books = Book.all
    # indexページ上に空のインスタンスを作成
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
      @book = Book.new
  end

  # 投稿のデータ保存処理を行うcreateアクションの追加
  def create
      book = Book.new(book_params)
      book.save
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(book)
  end

  def edit
      @book = Book.find(params[:id])
  end
  def update
      book = Book.find(params[:id])
      book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to books_path(@book)
  end
  
  def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to books_path(@book)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
