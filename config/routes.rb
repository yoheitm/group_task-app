Rails.application.routes.draw do
  devise_for :users
  root to: 'shift#index'
  resources :users, only: [:show, :edit]
  resources :groups, only: [:new, :create]
end
