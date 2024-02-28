Rails.application.routes.draw do
  get 'invitations/new'
  get 'invitations/create'
  get 'dashboard/index'
  # devise_for :users
  devise_for :users, controllers: { registrations: "users/registrations" }
  root 'dashboard#index'

  get '/invite', to: 'invitations#new'
  post '/invite', to: 'invitations#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
