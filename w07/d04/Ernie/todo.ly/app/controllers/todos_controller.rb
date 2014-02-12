class TodosController < ApplicationController
  
  def index
    @todos = Todo.all
  end

  def update
    @todo = Todo.find(id: params[:id])
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