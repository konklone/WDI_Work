Hogwarts::Application.routes.draw do
 
root "houses#index"
resource :houses
resources :students

end
