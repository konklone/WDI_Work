Costumely::Application.routes.draw do
  resources :costumes, only: [:new, :show, :create, :index, :delete, :update]
end
