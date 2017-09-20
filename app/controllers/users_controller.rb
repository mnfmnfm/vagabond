class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end

  def show
    @user = User.find_by_id(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:name, :current_city, :image, :email, :password)
  end


end