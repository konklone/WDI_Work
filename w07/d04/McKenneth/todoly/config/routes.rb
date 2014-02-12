Todoly::Application.routes.draw do

  resources :todos, only: [:index, :update]

end