class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to root_path
  end

  def edit
      @project = Project.find(params[:id])
  end

  def update
      @project = Project.find(params[:id])
      @project.update(project_params)
      redirect_to root_path
  end

  def destroy
    @project = project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :url, :description, :photo)
  end
end
