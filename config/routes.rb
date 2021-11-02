Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :posts

  get 'sign-up', to: 'users#new'
  post 'sign-up', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
end
