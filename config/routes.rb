Rails.application.routes.draw do
  get '/spots', to: 'spots#index'
end
