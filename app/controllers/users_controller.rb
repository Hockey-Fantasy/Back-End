class UsersController < ApplicationController
  before_action :set_users, only: [:show,:edit, :update, :destroy] 

  def index 
    @users = User.all
    render json: @users
  end

  def show 
  end

  def new 
  end

  def edit 
  end

  def create 
  end

  def update 
  end

  def destroy 
  end

  private

  def set_users
    @user = User.find(params[:id])
  end

  def user_params
    pararms.require(:user).permits(:first_name, :last_name, :username, :password)
  end

end
