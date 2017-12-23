 Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/features'

  get 'welcome/faq'

  get 'welcome/data'

  resources :earthquakes
  
  root to: 'welcome#index' 
  
  
end
