class TasksController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_id
    @tasks = Task.find(params[:id])
  end

end
