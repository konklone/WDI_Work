Projectio::Application.routes.draw do
   resources :students, only: [:index, :new, :create, :show]

   root 'welcome#index'
end
