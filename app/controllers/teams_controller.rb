class TeamsController < ApplicationController
  before_action :set_teams, only: [:show,:edit, :update, :destroy] 

  def index 
    @teams = Team.all
    render json: @teams
  end

  def show 
    render json: @team
  end

  def new 
  end

  def edit 
  end

  def create 
    @team = Team.new(team_params)
    if @team.valid?
      @team.save 
      render json: @team
    else 
      render json: {errors: @team.errors.full_messages}
    end
  end

  def update 
    @team.update(team_params)
  end

  def destroy 
    @team.destroy
  end

  private 
  def set_teams 
    @team = Team.find(params[:id])
  end

  def team_params 
    params.permit(:name, :location, :user_id, :league_id)
  end

end
