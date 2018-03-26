Rails.application.routes.draw do
  root 'static_pages#home'

  get '/help', to: 'static_pages#help', as: 'help'

  get '/login', to: 'sessions#new'
  post '/sessions/create', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :users, only: [:index, :show, :new, :create, :edit, :update]
end
