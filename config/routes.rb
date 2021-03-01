Rails.application.routes.draw do
  
  #stocks
  root to: 'top#index'
  
  resources :stocks
  
  #calc
  
  get 'calc/index'
  

end
