Watchio::Application.routes.draw do
  resources :movies, only: [:index, :create, :update, :destroy] do
    collection do
      get 'search'
    end
  end
end
