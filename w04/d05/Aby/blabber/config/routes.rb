Blabber::Application.routes.draw do
  resources :posts, only: [:index, :create]
  resources :friendships, only: [:index, :show]

  resources :users, except: [:index]

  resource :session, only: [:new, :create, :destroy]


end

