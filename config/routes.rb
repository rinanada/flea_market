Rails.application.routes.draw do
  root 'books#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }

end
