Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'users/index'
  # get 'users/show'
  # post 'users/show'
  # get 'users/create'
  # get 'users/update'
  # get 'users/destroy'
  #get 'profil/index'
  devise_for :users
  resources :publications
  resources :users
  # resources :users do
  #   resources :projets
  # end
  resources :projets
  get 'home/index'
  root to: "home#index"
  get '/search' , to: "users#search"
  #get 'profil/index'
  
  #root 'publications#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
