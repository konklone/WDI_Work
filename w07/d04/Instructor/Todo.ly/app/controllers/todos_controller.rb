class TodosController < ApplicationController
  def index
    @todos = Todo.order("created_at ASC").all
  end

  def update
    @todo = Todo.find_by(id: params[:id])

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