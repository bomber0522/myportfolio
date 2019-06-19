Rails.application.routes.draw do

  root 'profile_pages#home'
  resources :members, only: [:index, :show] do
    resources :entries, only: [:index]
  end

  resources :entries
end
