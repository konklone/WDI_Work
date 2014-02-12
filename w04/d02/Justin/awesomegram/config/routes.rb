Awesomegram::Application.routes.draw do
  resources :photos, only: [:index, :new, :create, :show]
end
