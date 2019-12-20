Rails.application.routes.draw do
  resources :contracts
  resources :teams
  resources :users
  resources :leagues
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
