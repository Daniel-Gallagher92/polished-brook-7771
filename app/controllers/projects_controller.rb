class ProjectsController < ApplicationController 

  def show
    
    @project =  Project.find(params[:id])
    @challenge = Challenge.where(id: @project.challenge_id)
    @contestants = @project.contestants
    
  end
end