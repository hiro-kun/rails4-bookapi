class BooksController < ApplicationController

  protect_from_forgery :except => [:create]

  #POST /books
  def create
    @book = Book.create(book_params)
  end

  #GET /books
  def index
    @books = Book.all
  end

  #GET /books/1
  def show
    @book = Book.find(params[:id])
    p @book
  end

  private
    def book_params
      params[:book].permit(:isbn_code, :book_name, :price, :author)
    end

end
