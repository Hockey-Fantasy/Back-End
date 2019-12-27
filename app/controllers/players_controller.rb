class PlayersController < ApplicationController
  before_action :set_players, only: [:show] 

  def index 
    @players = Player.all
    render json: @players
  end

  def show 
    render json: @player
  end

  private

  def set_players
    @user = User.find(params[:id])
  end

end
