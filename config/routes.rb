Rails.application.routes.draw do
  root 'books#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }

  resources :books, only: [:new, :show, :create] do
    resources :orders, only: [:new, :create, :show]
  end

end
