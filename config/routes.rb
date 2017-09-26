Rails.application.routes.draw do

  get 'users/new'
  get '/signup', to:'users#new'

  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'



end
