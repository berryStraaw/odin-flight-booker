Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:new, :create]
  resources :flights, only: [:index]
  root "flights#index"
  match "bookings/new", to: 'bookings#create', via: [:post]
end
