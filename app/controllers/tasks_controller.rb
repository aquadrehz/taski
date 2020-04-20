class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: "Task was Created" }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render :json, @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: "Task was Updated" }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :edit }
        format.json { render :json, @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to @task, notice: "Task was Destroyed" }
      format.json { head :no_content }
    end
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end
  def task_params
    params.require(:task).permit(:title, :description, :project_id, :completed, :task_file)
  end
end
