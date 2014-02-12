BucketList::Application.routes.draw do
  root 'app#index'
  resources :activities
end
