Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/show'

  get 'categories/edit'

  get 'categories/new'

  get 'home/index'
  resources :posts
  resources :categories











  root :to => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
