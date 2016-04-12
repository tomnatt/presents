Rails.application.routes.draw do
  root 'welcome#index'

  resources :presents
  get '/:user_id/presents/', to: 'presents#index', as: 'present_list'

  # Authentication by the power of omniauth
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/facebook', as: 'login'
end
