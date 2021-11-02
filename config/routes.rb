Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :posts

  get 'sign-up', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
end
