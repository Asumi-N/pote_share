Rails.application.routes.draw do
  get '/', to: 'home#top'
  post 'rooms/new',to: 'room#new'
  post 'resevation/confirm'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :rooms
  resources :reservations
end
