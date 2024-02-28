Rails.application.routes.draw do
  get 'dashboard/index'
  # devise_for :users
  devise_for :users, controllers: { registrations: "users/registrations" }
  root 'dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
