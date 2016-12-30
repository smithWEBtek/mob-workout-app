Rails.application.routes.draw do

  root 'application#home'

  # user login and registration
  get '/signup', to: "users#signup", as: 'user_signup'
  post '/users', to: "users#create", as: 'create_user'
  get '/login', to: "sessions#new", as: 'login'
  post '/login', to: "sessions#create", as: "create_session"
  delete '/logout', to: "sessions#destroy", as: "logout"

  resources :users, only: [:show] do
    resources :user_workout_lists
  end
  get '*path', to: "application#home"
end
