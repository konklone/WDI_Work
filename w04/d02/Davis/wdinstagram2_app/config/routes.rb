Wdinstagram2App::Application.routes.draw do
  # referencing / linking to my table named entries?
  resources :entries, only: [:index, :new, :create, :show]
end

