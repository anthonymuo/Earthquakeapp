 Rails.application.routes.draw do
  
  resources :quakelocations do
  collection {post :import }
  end
  
  resources :locations
  
  resources :recordingstations do 
   collection {post :import }
  end
   
   
  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/features'

  get 'welcome/faq'

  get 'welcome/data'
  
 # resources :quakelocations
  resources :earthquakes
  
  root to: 'welcome#index' 
  
 end
