Rails.application.routes.draw do
  resources :comments  
  resources :filmes 
  resources :actors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "filmes#index"
end