class TasksController < ApplicationController
  before_action :authenticate_User!
  before_action :set_task, only: [:edit, :update, :destroy, :complete]
  before_action :set_tasks, only: [:index, :complete, :make_active, :destroy]

  def index
  end

  def new
    @task = current_User.tasks.build()
  end

  def create
    @task = current_User.tasks.build(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update_attributes task_params
    redirect_to tasks_path
  end

  def complete
    @task.complete!
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def destroy_multiple
    current_User.tasks.where(id: params[:tasks]).destroy_all
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :priority, :completed, :user_id)
  end

  def set_tasks
    # binding.pry
    @tasks = current_User.tasks.where(completed: false)
    @completed_tasks = current_User.tasks.where(completed: true)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
