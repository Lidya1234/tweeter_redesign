Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :followships
  resources :posts
  resources  :sessions, only: [:index, :new]
  root to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  get 'login', to: 'sessions#create'
end
