Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  get 'home/index'
  resources :posts
  resources :categories
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/resources', to: 'pages#resources'


  root :to => 'home#index'

  ActiveAdmin.routes(self)
end
