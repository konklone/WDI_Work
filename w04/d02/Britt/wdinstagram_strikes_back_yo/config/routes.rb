WdinstagramStrikesBackYo::Application.routes.draw do

  resources :entries, only: [:index, :new, :create, :show]

end