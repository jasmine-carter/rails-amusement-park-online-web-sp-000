Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#new'
  resources :users, :attractions
<<<<<<< HEAD

  resources :rides, only: [:create]
=======
>>>>>>> 9e9ae3ecbe58f5a684e7030487da6be4b67e2d57
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/destroy', to: 'sessions#destroy'

end
