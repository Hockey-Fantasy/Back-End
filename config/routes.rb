Rails.application.routes.draw do
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/logged_in", to: "sessions#is_logged_in?"
  resources :contracts
  resources :teams
  resources :users, only: [:index, :show, :create]
  resources :leagues
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
