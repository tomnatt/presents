Rails.application.routes.draw do
  resources :presents

  root 'welcome#index'

  # Authentication by the power of omniauth
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/facebook', as: 'login'
end
