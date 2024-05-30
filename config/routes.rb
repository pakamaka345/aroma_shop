Rails.application.routes.draw do
  root 'home#index'
  get '/login', to: 'users#login'
  post '/login', to: 'users#authenticate'
  get 'forgot_password', to: 'users#forgot_password'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/profile', to: 'users#profile'
  get '/logout', to: 'users#logout'
  resources :users, only: [:show, :edit, :update]

  get '/store', to: 'products#index'
  resources :products, only: [:index]
  get 'products/category/:category_id', to: 'products#category', as: 'category_products'
  get 'products/subcategory/:subcategory_id', to: 'products#subcategory', as: 'subcategory_products'

  resources :products, only: [:index, :show]
end
