Rails.application.routes.draw do

  root 'profile_pages#home'
  
  resources :entries
end
