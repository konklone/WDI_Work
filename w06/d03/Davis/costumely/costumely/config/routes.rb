Costumely::Application.routes.draw do
  root :to => 'costumes#index'
  resources :costumes
end
