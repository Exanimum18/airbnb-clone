Rails.application.routes.draw do
  root to: "pages#home"
  # resources :users do
  #   resources :plans
  #   resources :bookings
  # end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
