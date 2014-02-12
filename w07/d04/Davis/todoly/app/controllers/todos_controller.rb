class TodosController < ApplicationController
  def index
    @todos = Todo.order("created_at ASC").all

    render :index
  end

  def update
    # convention: namespace params w/ specific resource
    
    @todo = Todo.find(params[:id].to_i)

    if @todo.update(todo_params)
      # respond w/ fully updated model in json form
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