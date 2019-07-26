Rails.application.routes.draw do
  
  resources :wordbanks
  root 'wordbanks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
