class TasksController < ApplicationController

  before_filter :authenticate_user!

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new()
  end

  def create
    @task = Task.create(params[:task])

    if @task.save
      redirect_to(@task.project, :notice => "Successfully task created!")
    else
      render :action => 'new'
    end
  end

  def destroy
    @task = Task.find(params[:id]).destroy
    redirect_to :back, :notice => "Successfully deleted!"
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  respond_to :html, :json
  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])
    respond_with @task
  end
    
end