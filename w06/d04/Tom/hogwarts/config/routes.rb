Hogwarts::Application.routes.draw do

  root "houses#index"
    resources :houses do
    resources :students do
    end
  end
end
