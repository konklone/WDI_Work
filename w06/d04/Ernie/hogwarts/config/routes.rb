Hogwarts::Application.routes.draw do
 
root "house#index"
resources :houses
resources :students

end
