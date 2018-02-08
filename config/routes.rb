Rails.application.routes.draw do
  root 'books#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }

  resources :exhibits, only: [:new, :create] do
    resources :books, only: [:show]
  end
  resources :orders, only: [:new, :create, :show]

end
