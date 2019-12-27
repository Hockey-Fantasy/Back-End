class UsersController < ApplicationController
  before_action :set_users, only: [:show] 

  def index 
    @users = User.all
    if @users
      render json:{
        users: @users 
      } 
    else
      render json: {
        status: 500,
         users: ["no users found"],
       }
    end
  end

  def show 
    if @user 
      render json: {
         user: @user,
       }
    else
      render json: {
         status: 500,
         users: ["user not found"],
       }
    end
  end

  def create 
    @user = User.new(user_params)
    if @user.save 
      login! 
      render json: {
         status: created,
         user: @user,
       }
    else
      render json: {
         status: 500,
         users: @user.errors.full_messages
       }
    end
  end
  

  private

  def set_users
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:first_name, :last_name, :email, :username, :password)
  end

end
