class TeamsController < ApplicationController

  def show
    @team = Team.find(params[:id])
    @projects = @team.projects
  end
  
  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(params[:team])
    if @team.save
      redirect_to team_url(@team.id)
    else
      render :new
    end
  end
  
end
