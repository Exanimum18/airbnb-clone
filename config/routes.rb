Rails.application.routes.draw do
  post 'users/create' # como linkear este get a users/sign_up?
  get 'users/:id/edit', to: "users#edit", as: "edit_user"
  get 'users/delete'
  get 'users/:id', to: "users#show", as: "show_user"
  patch 'users/:id/', to: "users#update", as: "user"
  resources :user
    resources :plan

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
