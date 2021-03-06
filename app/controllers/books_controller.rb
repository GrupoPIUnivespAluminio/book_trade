class BooksController < ApplicationController
  before_action :authenticate_user!, only: %i[index new create edit update]
  before_action :find_book, only: %i[show edit update]

  def index
    @books = Book.all
  end

  def show; end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user

    if @book.save!
      redirect_to @book
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :description, :cover, images: [])
  end
end
