Rails.application.routes.draw do
  resources :favorites, only: [:index, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

  root to: 'users#new'
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

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end
