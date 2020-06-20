class TasksController < ApplicationController
  
  def new
    @task = Task.new
  end
  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to root_path
    else
      render new_task_path
    end
  end

  private
  def task_params
    params.require(:task).permit(:title, :priority, :status, :start_at, :end_at)
  end
end
