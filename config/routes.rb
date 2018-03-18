Rails.application.routes.draw do
  root 'books#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }

  resources :books, only: [:show] do
    resources :orders, only: [:new, :create]
  end
  resources :exhibits, only: [:new, :create]
  resources :users, only: [:new]
  resources :user_details, only: [:new, :create, :edit, :update]

  namespace :books do
    get "/database", to: "search#database"
    post "/database", to: "search#database"
  end
end
