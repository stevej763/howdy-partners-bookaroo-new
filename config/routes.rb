Rails.application.routes.draw do
  resources :users, only: [:create]
  get 'sign-up', to: 'users#new'
  post 'sign-up', to: 'users#create'
  
  get 'log-in', to: 'sessions#new'
  post 'log-in', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'

  get 'log-out', to: 'sessions#log_out'
  
  resources :posts
  get 'newsfeed', to: 'posts#newsfeed'
  
  root "sessions#welcome"
end
