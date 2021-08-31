Rails.application.routes.draw do
  root 'purchases#index'

  resources :purchases, only: [:index]
  post 'uploads', to: 'purchases#upload', as: 'uploads'
end
