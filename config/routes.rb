Rails.application.routes.draw do
  get 'messages/index'
  
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
 
end
