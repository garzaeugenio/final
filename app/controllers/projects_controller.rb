class ProjectsController < ApplicationController
  
  def index
    @project = Project.all
  end

  def show
    @project = Project.find_by(id: params["id"])
    @owners = Owner.where(project_id: @project.id)
    @users = []
    @owners.each do |owner|
      the_user = User.find_by(id: owner.user_id)
      @users << the_user
      end 
  end
end