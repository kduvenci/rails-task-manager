class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :show, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
  end

  def create
    @task = Task.new(strong_params)
    if @task.save
      redirect_to :root
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(strong_params)
      redirect_to :root
    else
      render :edit
    end  
  end

  def destroy
    @task.destroy
    redirect_to :root
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def strong_params #for safety
    params.require(:task).permit(:title, :details, :completed)
  end
end
