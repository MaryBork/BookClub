class BooksController < ApplicationController

  def index
    @books = Book.sorted_by(params[:direction], params[:sort])
    @average_ordered_books = Book.sorted_by("desc", "average_score")
  end

  def show
    @show_book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @author = Author.find(params[:id])
    if @book.save
      redirect_to(book_path(id: @book.id)) if @book.id
    else
      render "new"
    end
  end

  def new
    @book = Book.new
  end

  private

  def book_params
    params.require(:book).permit(:title, :pages, :year, :authors, :image_url)
  end


end
