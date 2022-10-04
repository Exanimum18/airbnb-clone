Rails.application.routes.draw do
  root to: "plans#index"
  
  resources :plans do
    resources :bookings
  end


  resources :plans do
    resources :bookings
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
