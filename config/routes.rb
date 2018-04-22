Rails.application.routes.draw do
  get 'cart/index'

  resources :danceclasses
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'static_pages/classes'
   get 'static_pages/test'
 
  
  get '/cart', to: 'cart#index'
   get '/cart/:id', to: 'cart#add'
   get '/cart/remove/:id', to: 'cart#remove'

end
