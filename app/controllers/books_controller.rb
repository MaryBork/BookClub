class BooksController < ApplicationController

  def index
    @books = Book.sorted_by(params[:direction], params[:sort])
    @average_ordered_books = Book.sorted_by("desc", "average_score")
  end

  def show
    @show_book = Book.find(params[:id])
  end

  def create
    @create_book = Book.create(book_params)
    render :show
    redirect_to(book_path(id: @create_book.id)) if @create_book.id
  end

  def new
    @book = Book.new
  end

  private

  def book_params
    params.require(:book).permit(:title, :pages, :year, :author, :image_url)
  end


end
