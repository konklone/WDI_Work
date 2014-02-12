Wdinstagram2App::Application.routes.draw do
  resources :entries, only: [:index, :new, :create, :show] 
  # do
  #     collection do
  #        # GET /entries/search
  #        get "search"
  #     end

  #     member do
  #        # POST /entries/:id/repost
  #        post "repost"
  #     end
  # end

  get 'search' => 'searches#search'
end
