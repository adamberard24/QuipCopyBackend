Rails.application.routes.draw do
  resources :votes
  resources :answers
  resources :prompts
  resources :rounds
  resources :games
  resources :join_groups
  resources :groups
resources :users, only: [:create]
post "/login", to: "users#login"
end
