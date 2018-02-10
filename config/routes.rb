Rails.application.routes.draw do
  root 'books#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }

  resources :books, only: [:show] do
    resources :orders, only: [:new, :create]
  end
  resources :exhibits, only: [:new, :create]
end
