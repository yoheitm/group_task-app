Rails.application.routes.draw do
  get 'meetings/index'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root to: 'groups#index'
  resources :groups, only: [:new, :create, :edit, :update, :destroy] do
    resources :messages, only: [:index, :create]
    resources :meetings
    member do
      delete 'drop'
    end
    member do
      post 'join'
    end
  end
end
