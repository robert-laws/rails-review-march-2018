Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/new'

  root 'static_pages#home'

  get '/help', to: 'static_pages#help', as: 'help'

  get '/login', to: 'sessions#new'
  post '/sessions/create', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
