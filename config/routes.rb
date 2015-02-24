Rails.application.routes.draw do

resources :projects
resources :users
resources :sessions

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

  root to: "projects#index"

end
