Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root to: 'groups#index'
  resources :groups, only: [:new, :create, :edit, :update, :destroy] do
    resources :meetings
    resources :messages, only: [:index, :create]
    member do
      delete 'drop'
    end
    member do
      post 'join'
    end
  end
end
