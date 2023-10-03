Rails.application.routes.draw do
  devise_for :users
  root to: "timeslots#index"
  resources :timeslots
  post '/create_booking', to: 'bookings#create', as: 'create_booking'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
