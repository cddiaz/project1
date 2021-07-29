Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index, :show, :edit, :update]
  resources :measurements
  resources :workouts
  resources :exercises

  post '/workouts/select' => 'workouts#select'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
