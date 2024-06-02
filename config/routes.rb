Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'home#index'

    get '/login', to: 'users#login'
    post '/login', to: 'users#authenticate'
    get 'forgot_password', to: 'users#forgot_password'
    get '/register', to: 'users#new'
    post '/register', to: 'users#create'

    get '/profile', to: 'profile#profile'
    get '/profile/:id', to: 'profile#profile', as: 'user_profile'
    resource :profile, controller: 'profile', only: [:show, :edit, :update, :create, :destroy]

    get '/logout', to: 'users#logout'
    resources :users, only: [:show, :edit, :update]

    get '/store', to: 'products#index'
    resources :products, only: [:index, :show]
    get 'products/category/:category_id', to: 'products#category', as: 'category_products'
    get 'products/subcategory/:subcategory_id', to: 'products#subcategory', as: 'subcategory_products'

    resources :reviews, only: [:create]

    post '/products/favourites', to: 'favourites#create', as: 'favourites'
    delete '/products/favourites', to: 'favourites#destroy', as: 'remove_favourite'
    get '/favourites', to: 'favourites#index'

    get '/orders', to: 'orders#index'
    post '/orders/add_to_cart', to: 'orders#add_to_cart', as: 'add_to_cart'
    post 'update_quantity/:id', to: 'orders#update_quantity', as: 'update_quantity'
    delete '/orders/remove_from_cart/:id', to: 'orders#remove_from_cart', as: 'remove_from_cart'
    post '/checkout', to: 'orders#checkout', as: 'checkout'
  end
end
