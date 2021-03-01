Rails.application.routes.draw do
  
  #stocks
  root to: 'stocks#index'
  
  resources :stocks, excepts:[:index]
  
  #calc
  
  get 'calc/index'
  

end
