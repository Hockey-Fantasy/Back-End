class UsersController < ApplicationController
  before_action :set_users, only: [:show,:edit, :update, :destroy] 

  def index 
    @users = User.all
    render json: @users

  end

  def show 
    render json: @user
  end

  def new 
  end

  def edit 
  end

  def create 
    @user = User.create(user_params)
    if @user.valid?
      render json: @user
    else
      render json: {erros: @user.errors.full_messages}
    end
  end

  def update 
    @user.update(user_params)
  end

  def destroy 
    @user.destroy_all
  end

  private

  def set_users
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:first_name, :last_name, :username, :password)
  end

end
