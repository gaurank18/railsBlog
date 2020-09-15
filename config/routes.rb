Rails.application.routes.draw do
  get 'home/index'

  resources :comments do
    resources :likes
  end
  resources :posts do
    resources :likes
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
