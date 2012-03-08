class ProjectsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new()
  end

  def create
    @project = Project.new(params[:project])

    if @project.save
      redirect_to(projects_path, :notice => "Successfully created project!")

    else
      render :action => 'new'
    end

  end

  def edit
    @project = Project.find(params[:id])
  end

  def update

    @project = Project.find(params[:id])

    if @project.update_attributes(params[:project])
      redirect_to(@project, :notice => "#{@project.name} successfully updated!")
    end

  end

end
