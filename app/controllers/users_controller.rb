class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @show_user = User.find(params[:id])
    @user_chronological_reviews = @show_user.reviews.chronological_order_reviews(params[:sort].to_s)
  end

  def destroy
    @review = Review.find(params[:id]).delete
    redirect_to @show_user
  end



end
