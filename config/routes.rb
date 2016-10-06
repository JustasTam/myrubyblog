Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config


  get 'home/index'
  resources :posts
  resources :categories











  root :to => 'home#index'

  ActiveAdmin.routes(self)
end
