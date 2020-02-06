Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks",
    registrations: 'users/registrations',
    sessions: 'devise/sessions'
  }

  devise_scope :user do
    get 'users', to: 'users/registrations#index'
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get 'signup', to: 'users/registrations#signup'
  end

  root 'items#index'

  resources :items do
    resources :images
  end

  resources :users do
    member do
      get "logout"
    end
  end
end
