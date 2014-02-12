class TasksController < ApplicationController

  def index
    @tasks = Task.all
    render :index
  end

  def update
    @task = Task.find_by(id:params[:id])
    
    if @task.update(task_params)
      render json: @todo
    else
      render status: 400, nothing: true
    end
  end

private

  def task_params
    params.require(:task).permit(:task, :completed)
  end

end
