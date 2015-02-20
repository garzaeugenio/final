class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params["id"])
    @projects = @user.projects
  end

  # def new
  #   @project = Project.new
  # end

  # def create
  #   project_params = params.require(:project).permit(:project_name)
  #   Project.create(project_params)
  #   render text: params["project"]
  # end

  # def edit
  #   @project = Project.find_by(id: params["id"])

  # end

  # def update
  #   project_params = params.require(:project).permit(:project_name)
  #   @project = Project.find_by(id: params["id"])
  #   @project.update(project_params)
  #   redirect_to project_path
  # end

  # def destroy
  #   @project = Project.find(params[:id])
  #   @project.destroy
  #   redirect_to projects_path
  # end

end