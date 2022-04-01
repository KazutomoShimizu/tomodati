Rails.application.routes.draw do
  resources :feeds do
    collection do
      post :confirm
    end
  end
  root to: "home#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
