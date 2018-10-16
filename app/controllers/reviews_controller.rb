class ReviewsController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    new_user = User.create(name: params[:user_name].titleize)
    reviewed_book = Book.find(params[:book_id])
    review_params[:user] = new_user
    created_review = reviewed_book.reviews.create(review_params)
    redirect_to(book_path(reviewed_book))
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to(user_path(id: params[:user_id]))
  end

  private
  def review_params
    params.require(:review).permit(:title,:score,:description)
  end
end
