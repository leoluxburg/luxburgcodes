Rails.application.routes.draw do

  root to: 'pages#home'
  get '/cv', to: 'pages#cv'
  resources :projects
  resources :messages
end
