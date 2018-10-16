class ReviewsController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    new_review = Hash.new(0)
    reviewed_book = Book.find(params[:book_id])
    new_user = User.create(name: params[:review][:user])
    new_review[:title] = params[:review][:title]
    new_review[:score] = params[:review][:score]
    new_review[:description] = params[:review][:description]
    new_review[:user] = new_user
    created_review = reviewed_book.reviews.create(new_review)

    redirect_to(book_path(reviewed_book))
  end

  def destroy
    @review = Review.find(params[:id])
    @user = @review.user
    @review.destroy
    redirect_to(user_path(id: @user.id)
  end

  private
  def review_params
    params.require(:review).permit(:title,:score,:description)
  end
end
