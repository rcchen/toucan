Rails.application.routes.draw do

  # Handle authentication with Devise  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # CRUD routes for assignments
  post '/assignments' => 'assignments#create'
  get '/assignments/:id' => 'assignments#show'
  put '/assignments/:id' => 'assignments#update'
  delete '/assignments/:id' => 'assignments#delete'

  # Signing up for an assignment
  get '/assignments/:id/signup' => 'assignments#signup'

  # Static index
  root 'static#index'

end
