class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @show_author = Author.find(params[:id])
  end

  def destroy
    book_ids = BookAuthor.where(author_id: params[:id]).pluck(:book_id)
    book_author_ids = BookAuthor.where(author_id: params[:id]).pluck(:id)

    book_ids.each do |id|
      Book.find(id).destroy
    end

    book_author_ids.each do |id|
      BookAuthor.find(id).destroy
    end

    author = Author.find(params[:id])
    author.destroy
  end


end
