Hogwarts::Application.routes.draw do
 
resources :houses, only: [:index, :show]
resources :students, only: [:index, :new, :create, :show]

root "houses#index"

end
