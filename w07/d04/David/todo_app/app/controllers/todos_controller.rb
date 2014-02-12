class TodosController < ApplicationController

  def index

    @todos = Todo.order("created_at ASC").all
    
    render :index
  end

  def update
    @todo = Todo.find(params[:id])
    # Todo.find(params[:id]).update(completed: params[:todo][:completed])

    if @todo.update(todo_params)
      render json: @todo
    else
      render status: 400, nothing: true
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:task, :completed)
  end

end
