Rails.application.routes.draw do
  resources :comments
  resources :posts

  get 'home/index'

  resources :posts
  resources :comments do
    member do
      post 'like'
    end
  end
  resources :posts do
    member do
  		post 'like'
  	end
  end

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
