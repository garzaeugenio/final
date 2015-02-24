class ProjectsController < ApplicationController
  
  def index
    @project = Project.all
  end

  def show
  @project = Project.find_by(id: params["id"])
  @category = @project.category
  end

  def new
    @project = Project.new
  end

  def create
    project_params = params.require(:project).permit!
    @project = Project.create(project_params)
    if @project.valid?
      redirect_to projects_path, notice: "New Project Added"
    else
      redirect_to users_path, alert: "Please fill our required fields"
    end
  end

  def edit
    @project = Project.find_by(id: params["id"])

  end

  def update
    project_params = params.require(:project).permit(:project_name)
    @project = Project.find_by(id: params["id"])
    @project.update(project_params)
    if @project.valid?
      redirect_to project_path
    else
      render text: "Could not update"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

end