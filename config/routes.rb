Rails.application.routes.draw do
  root 'user#index'

  resources :user, only: [:index, :show]
end
