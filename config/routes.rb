Rails.application.routes.draw do
  resources :recipes
  # resources :users, only: :create
  post '/signup', to: 'users#create'
end
