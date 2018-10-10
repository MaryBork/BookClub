class BooksController < ApplicationController

  def index
    @books = Book.order(params[:sort])
  end

end
