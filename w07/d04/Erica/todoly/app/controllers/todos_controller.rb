class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end


  def update
    @todo = Todo.find_by(id: params[:id])

    if @todo.update(todo_params)
      render json: @todos
    else
      render status: 400, nothing: true
  end

  private

  def todo_param 
    params.require(:todo).permit(:task, :completed)
  end
  end
end