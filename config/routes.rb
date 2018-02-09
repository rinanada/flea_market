Rails.application.routes.draw do
  root 'books#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }

  resources :books, only: [:show]
  resources :exhibits, only: [:new, :create]

  resources :orders, only: [:new, :create, :show]

end
