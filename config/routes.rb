Rails.application.routes.draw do
  resources :trips, only: %i[index show]
  resources :conditions, only: [:index]
  resources :stations, only: %i[index show], param: :slug
  resources :items, only: [:show]

  root "welcome#index"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/bike-shop', to: 'shop#index'
  get '/cart', to: 'carts#show'
  post '/cart', to: 'carts#create'

  resources :users, only: %i[new create show]

  get '/dashboard', to: 'dashboard#index'

  namespace :admin do
  end
end
