Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :followings
  resources :opinions
  resources  :sessions, only: [:create, :destroy]
  root to: 'sessions#new'
end
