Wdinstagram2App::Application.routes.draw do
  resources :posts, only: [:index, :new, :create, :show]
end
