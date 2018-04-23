Rails.application.routes.draw do

  # OmniAuth
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/github', as: 'github_login'

  #sessions
  # get '/login', to: 'sessions#new', as: 'login_form'
  # post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy', as: 'logout'

  get '/cart', to:'orderproducts#index', as: 'cart'

  # Products:
  root 'products#root', as: 'homepage'
  resources :products do
    resources :categories, only: [:index]
  end

  # Merchants:
  resources :merchants do
    resources :products, only: [:index]
  end

  # Reviews:
  resources :reviews

  # Categories:
  resources :categories

  # Orders:
  resources :orders

  # orderproducts:
  resources :orderproducts
end
