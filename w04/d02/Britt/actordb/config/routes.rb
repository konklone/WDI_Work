Actordb::Application.routes.draw do
 resources :actors, only: [:index, :show, :new, :create]
end
