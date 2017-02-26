class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:edit, :show, :update, :destroy, :complete, :not_complete]
  before_action :set_tasks, only: [:index, :complete, :make_active, :destroy]

  def index
  end

  def new
    @task = current_user.tasks.build()
  end

  def create
    @task = current_user.tasks.build(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update_attributes task_params
    redirect_to tasks_path
  end

  def make_active
    if @task.update_attribute :completed, false
    end
  end

  def complete
    @task.complete!
    redirect_to tasks_path
  end

  def not_complete
    @task.update_attribute :completed, false
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def destroy_multiple
    current_user.tasks.where(id: params[:tasks]).destroy_all
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :priority, :completed, :due_date, :description, :user_id)
  end

  def sort_column
    params[:sort] ||= "priority"
  end

  def set_tasks
    # binding.pry
    @tasks = current_user.tasks.where(completed: false).order(updated_at: :desc)
    @completed_tasks = current_user.tasks.where(completed: true)
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def show
  end
end