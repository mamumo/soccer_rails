class TeamsController < ApplicationController

  def index
    teams = Team.all
    render json: teams.as_json({ include: :players })
  end

  def show
    team = Team.find(params[:id])
    render json:team
  end

  def create
    team = Team.create({name:params[:name], player_id:params[:player_id]})
    render json: team
  end

end