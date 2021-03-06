Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  get '/home', to:"welcome#home", as: 'home'
  post '/logout', to:"sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
