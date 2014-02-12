class TodosController < ApplicationController

  def index
    @tasks = Todo.all
    render :index
  end
  def update
    @tasks = Todo.find(params[:id])
    # @tasks.completed = params[:todos][:completed]
    # @tasks.save
      if @tasks.update(todo_params)
       render json: @tasks
      else
       render status: 400, nothing: true
      end
  end

  private
  def todo_params
    params.require(:todos).permit(:task, :completed)
  end

end