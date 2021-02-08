Rails.application.routes.draw do
  devise_for :users
  root to: 'shift#index'
  resources :users, only: %i[show edit destroy]
  resources :groups, only: %i[new create]
end
