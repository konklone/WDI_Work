Projectio::Application.routes.draw do

  root 'welcome#index'
  resources :students, only: [:index, :new, :create, :show]
end
