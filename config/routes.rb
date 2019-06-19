Rails.application.routes.draw do

  root 'profile_pages#home'

  resources :members, only: [:index, :show] do
    resources :entries, only: [:index]
  end

  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
  resource :password, only: [:show, :edit, :update]

  resources :entries do
    resources :images, controller: "entry_images" do
      patch :move_higher, :move_lower, on: :member
    end
  end

  namespace :admin do
    root to: "top#index"
    resources :members
  end
end
