Watchio::Application.routes.draw do
  root 'watchlist#index'
  resources :movies, except: [:new, :edit]
end
