TodoLy::Application.routes.draw do
  resources :todos, only: [:index, :update]

  root "todos#index"
end
