Projectio::Application.routes.draw do

  root 'welcome#index'

  resources :students, only: [:show, :create, :index, :new]

end
