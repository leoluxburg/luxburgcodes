Rails.application.routes.draw do

  root to: 'pages#home'
  get '/cv', to: 'pages#cv'
  get '/podcast', to: 'pages#podcast'
  resources :projects
  resources :messages
end
