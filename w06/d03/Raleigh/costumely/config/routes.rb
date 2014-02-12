Costumely::Application.routes.draw do

  resources :costumes

  root 'costumes#index'
end
