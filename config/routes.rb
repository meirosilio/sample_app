Rails.application.routes.draw do

  get '/signup', to:'users#new'
  post '/signup',  to: 'users#create'
  resources :users

  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'



end
