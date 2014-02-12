Hogwarts::Application.routes.draw do
 
root :to =>  "houses#index"
resource :houses, only: [:index, :show, :new]
resources :students, only: [:index, :show, :new]

end
