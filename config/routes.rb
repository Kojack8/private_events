Rails.application.routes.draw do

  root to: "users#new"
  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :index, :show]
  resources :participation, only: [:new, :create, :show]
  resources :events do
    member do
      get 'rsvp'
    end
  end
  get 'login', to: 'sessions#new'   
  post 'login', to: 'sessions#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
