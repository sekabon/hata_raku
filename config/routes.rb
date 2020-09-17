Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: :show 
  
  get 'home/index'
  get 'home/show'
  root to: "home#index"
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
