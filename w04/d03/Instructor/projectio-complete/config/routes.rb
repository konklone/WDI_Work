Projectio::Application.routes.draw do

  root 'welcome#index'

  resources :students do # no 'only', give us all of them!
    resources :dependencies, except: [:index] # there is no page that lists them all (they are dependencies!)
  end

end
