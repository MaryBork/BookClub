class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews.chronological_order_reviews(params[:sort])

  end

  def destroy
    @review = Review.find(params[:id]).delete
    redirect_to @user
  end



end
