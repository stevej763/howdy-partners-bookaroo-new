Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :posts

  get 'sign-up', to: 'users#new'
  post 'sign-up', to: 'users#create'
  get 'log-in', to: 'sessions#new'
  post 'log-in', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  root "sessions#welcome"
end
