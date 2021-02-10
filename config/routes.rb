Rails.application.routes.draw do
  devise_for :users
  root to: 'shift#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create]
end
