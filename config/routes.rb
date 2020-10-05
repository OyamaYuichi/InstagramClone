Rails.application.routes.draw do
  resources :favorites, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

  root to: 'feeds#index'
  resources :feeds do
    collection do
      post :confirm
    end
  end

  resources :users do
    collection do
      post :confirm
    end
  end

end
