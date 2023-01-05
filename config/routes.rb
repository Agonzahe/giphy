Rails.application.routes.draw do
  resources :boards
  devise_for :users
  resources :labels
  resources :publicaciones
  #root "publicaciones#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get '/users', to: 'users#home'
  get '/users/:user_id/publicacione', to: 'publicacione#index', as: :user_publications
  root to: "publicacione#index"
end