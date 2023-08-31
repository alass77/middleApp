Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :publications
  resources :users, controllers: { sessions: 'sessions' }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest', as: :guest_sign_in
    post 'users/admin_guest_sign_in', to: 'users/sessions#new_admin_guest', as: :admin_guest_sign_in
  end
  resources :projets
  get 'home/index'
  root to: "home#index"
  get '/search' , to: "users#search"
  #get 'profil/index'
  
  #root 'publications#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
