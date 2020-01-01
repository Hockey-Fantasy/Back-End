class TokensController < ApplicationController
  skip_before_action :require_login, only: [:login, :auto_login]

  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      payload = { user_id: user.id }
      token = encode_token(payload)
      render json: {
               user: user, jwt: token, success: "Welcome back, #{user.username}",
             }
    else
      render json: {
               failure: "Log in failed! Email or password invalid",
             }
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: { errors: "No User Logged In" }
    end
  end

  def user_is_authed
    render json: { message: "You are authorized" }
  end

  # private encode_token(payload = {})
  # exp = 24.hours.from_now
  # payload[:exp] = exp.to_i
  # JWT.encode(payload, Rails.application.secrets.secret_key_base)
end
