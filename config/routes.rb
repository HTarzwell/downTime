# frozen_string_literal: true

Rails.application.routes.draw do
  resources :downtime_instances
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  get '/downtime_instances' => 'downtime_instances#index'
  get '/downtime_instances/:id' => 'downtime_instances#show'
  delete '/downtime_instances/:id' => 'downtime_instances#destroy'
  patch '/downtime_instances/:id' => 'downtime_instances#update'
  post '/downtime_instances' => 'downtime_instances#create'
end
