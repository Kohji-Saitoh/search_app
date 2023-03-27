Rails.application.routes.draw do
  get '/spots', to: 'spots#index'
  get '/spots/new', to: 'spots#new'
  post '/spots', to: 'spots#create'
  root to: "spots#index"
end
