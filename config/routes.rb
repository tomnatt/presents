Rails.application.routes.draw do
  resources :presents

  root 'presents#index'

  # By the power of omniauth
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
