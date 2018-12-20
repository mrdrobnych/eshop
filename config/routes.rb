Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  root 'pages#index'

  resources :profiles 
  resources :categories
  resources :orders, only: [:index]

  resources :products do
    resources :posts
    resources :questions
    resources :orders, only: [:show, :new, :create, :edit, :update, :destroy]
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
