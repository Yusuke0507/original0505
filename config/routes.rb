Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "verify", :to => "users/registrations#verify"
  end

  root to: 'reservations#index'
  resources :reservations, only: [:new, :create, :show]
  resources :orders, only:[:index, :show]
end
