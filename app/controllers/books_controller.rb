class BooksController < ApplicationController

  def index
    @books = Book.sorted_by(params[:direction], params[:sort])
    @average_ordered_books = Book.sorted_by("desc", "average_score")
  end

  def show
    @show_book = Book.find(params[:id])
  end

end
