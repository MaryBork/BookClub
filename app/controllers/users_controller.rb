class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @show_user = User.find(params[:id])
  end

end
