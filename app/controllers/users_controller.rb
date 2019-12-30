class UsersController < ApplicationController
  before_action :set_users, only: [:show]
  skip_before_action :require_login, only: [:create]

  def index
    @users = User.all
    if @users
      render json: {
        users: @users,
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
    @user = User.create(user_params)
    if @user.valid?
      payload = { user_id: @user.id }
      token = encode_token(payload)
      render json: { user: @user, jwt: token }
    else
      render json: {
        status: :non_acceptable,
        users: @user.errors.full_messages,
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
