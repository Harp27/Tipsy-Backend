Rails.application.routes.draw do
  # CRUD routes for bars
  resources :bars, only: [:index, :show, :create, :update, :destroy]

  # If you have other routes or controllers in the future, they would be added below

  # For example, when you eventually add user authentication:
  # resources :users, only: [:create, :update, :destroy]
  # post 'login', to: 'sessions#create'
  # delete 'logout', to: 'sessions#destroy'
end