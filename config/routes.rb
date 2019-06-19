Rails.application.routes.draw do

  root 'profile_pages#home'
  resources :members, only: [:index, :show] do
    resources :entries, only: [:index]
  end

  resources :session, only: [:create, :destroy]
  resources :account, only: [:show, :edit, :update]
  resouces :password, only: [:show, :edit, :update]

  resources :entries do
    resources :images, controller: "entry_images" do
      patch :move_higher, :move_lower, on: :member
    end
  end
end
