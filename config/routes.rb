Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :followings
  resources :opinions
  resources  :sessions
  root to: 'users#new'
  delete 'logout', to: 'sessions#destroy'
end
