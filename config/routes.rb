Rails.application.routes.draw do
  resources :teams
  resources :leagues
  resources :users
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
