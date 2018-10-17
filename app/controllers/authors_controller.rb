class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @show_author = Author.find(params[:id])
  end

  def destroy
    book_id_array = BookAuthor.where(author_id: params[:id]).pluck(:book_id)
    Author.find(params[:id]).books.each do |book|
      book.destroy
      end
    BookAuthor.where(author_id: params[:id]).destroy_all
    Author.find(params[:id]).destroy
    redirect_to root_path
  end


end
