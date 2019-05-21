class TasksController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def find_id
    @tasks = Task.find(params[:id])
  end
end
