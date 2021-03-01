Rails.application.routes.draw do
  
  #stocks
  root to: 'top#index'
  
  post 'stocks', to: 'stocks#addstock'
  
  resources :stocks, except:[:create]
  
  delete 'stocks', to: 'stocks#deleteall', as: 'deleteall_stock'
  
  
  #calc
  
  get 'calc/index'
  

end
