Rails.application.routes.draw do
  devise_for :users
  root to: "timeslots#index"
  resources :timeslots
  resources :bookings, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
