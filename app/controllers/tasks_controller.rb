class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
    
    def new
      @task = Task.new
    end
    
  def create
    @task = Task.new(params[:task])
    if @task.save
      flash[:notice] = "Task has been created."
      redirect_to root_path
    else
      render :new
    end
  end
  
  def show
    @task = Task.find(params[:id])
  end
end