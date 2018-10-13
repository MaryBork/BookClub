class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @show_author = Author.find(params[:id])
  end
end
