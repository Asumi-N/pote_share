Rails.application.routes.draw do
  get '/', to: 'home#top'
  post 'rooms/new',to: 'room#new'
  post 'resevation/confirm'
  get 'users/account',to: 'users#show'
  get 'users/profile'
  post 'users/profile'
  patch 'users/update'
  post 'users/update'
  get 'rooms/posts'
  get 'rooms/search'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :rooms
  resources :reservations
end
