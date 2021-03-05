Rails.application.routes.draw do
  get 'events/new'
  get 'events/show'
  get 'events/index'
  get 'events/create'
  root to: "users#new"
  resources :users, only: [:new, :create, :show]
  get 'login', to: 'sessions#new'   
  post 'login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
