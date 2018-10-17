class BooksController < ApplicationController

  def index
    @books = Book.sorted_by(params[:direction], params[:sort])
    @average_ordered_books = Book.sorted_by("desc", "average_score")
    @top_3_users = User.top_users
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    sorted_params = sort_params(book_params)
    new_book = Book.create(sorted_params)
    redirect_to book_path(new_book)
  end

  def sort_params(new_params)
    new_book_params = Hash.new(0)
    new_book_params[:title] = new_params["title"]
    new_book_params[:pages] = new_params["pages"]
    new_book_params[:year] = new_params["year"]
    new_book_params[:image_url] = new_params["image_url"]
    new_book_params[:authors] = auth_to_array(new_params["authors"])
    new_book_params
  end

  def auth_to_array(array_string)
    array_string.titleize.split(',').map do |name|
      Author.find_or_create_by(name: name)
    end
  end

  def new
    @book = Book.new
  end

  def destroy
    BookAuthor.where(book_id: params[:id]).destroy_all
    Review.where(book_id: params[:id]).destroy_all
    Book.find(params[:id]).destroy
    redirect_to(root_path)
  end

  private

  def book_params
    params.require(:book).permit(:title, :pages, :year, :authors, :image_url)
  end




end
