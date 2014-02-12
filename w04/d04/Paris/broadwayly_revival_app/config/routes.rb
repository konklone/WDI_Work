BroadwaylyRevivalApp::Application.routes.draw do

  resources :shows, only: [:index, :new, :create, :show]

  resources :shows do
  resources :songs
  end

  root 'welcome#index'

end
