Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :confirmations => 'users/confirmations'
  }

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "verify", :to => "users/registrations#verify"
    get "login", :to => "users/sessions#new"
  end

  root to: 'reservations#index'
  resources :reservations, only: [:new, :create, :show]
  resources :orders, only:[:index, :show, :create]
end
