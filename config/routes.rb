Rails.application.routes.draw do
  resources :movies
 root to: 'pictures#index'
   resources :pictures do
      collection do
         post :confirm
    end
  end
    resources :pictures do
       resources :comments
    end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show,:edit]
  resources :favorites, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
  resources :movies
  
end
