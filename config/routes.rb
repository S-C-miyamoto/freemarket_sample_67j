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
    resources :purchase do
      collection do
        get 'buy'
        get 'done'
        post 'pay'
      end
    end
  end

  resources :cards, only: [:new, :create, :show, :destroy]

  resources :users do
    member do
      get "logout"
      get "credit"
      get "payment"
      get 'purchase'
    end
  end
end
