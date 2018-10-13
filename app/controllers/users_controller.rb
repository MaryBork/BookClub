class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @show_user = User.find(params[:id])
    @user_chronological_reviews = User.chronological_order_reviews)
  end

end
