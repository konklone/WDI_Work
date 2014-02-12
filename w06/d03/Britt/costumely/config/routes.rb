Costumely::Application.routes.draw do
  
  resources :costumes do 
    resources :notes, only: [:index, :new, :create]
  end

end
