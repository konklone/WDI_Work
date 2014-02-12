Projectio::Application.routes.draw do
  root 'welcome#index'
  resources :dogs, only: [:index, :new, :create, :show]
end

