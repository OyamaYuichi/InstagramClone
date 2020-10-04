Rails.application.routes.draw do
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
