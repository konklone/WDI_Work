Costumely::Application.routes.draw do
  resources :costumes, only: [:index, :new, :create, :show, :edit]
end
