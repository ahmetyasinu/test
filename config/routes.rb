Rails.application.routes.draw do
  resources :drivers
  root 'drivers#index'
  resources :vehicles
  root 'vehicles#index'
  
 
end
 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
