Rails.application.routes.draw do
  devise_for :users
  root to: 'reservations#index'
  resources :reservations, only: [:new, :create, :show]
end