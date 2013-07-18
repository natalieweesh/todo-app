class ProjectsController < ApplicationController

  def new
    @project = Project.new
    
    @team_id = params[:team_id]
    
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to project_url(@project.id)
    else
      render :new
    end
  end
  
  def show
    @project = Project.find(params[:id])
    @items = @project.items
  end
  
 
end
