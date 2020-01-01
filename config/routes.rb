Rails.application.routes.draw do
  # get "tokens/create"
  # sessions
  post "/login", to: "tokens#login"
  get "/auto_login", to: "tokens#auto_login"
  get "/user_is_authed", to: "tokens#user_is_authed"
  resources :token, only: [:create]
  resources :users, only: [:index, :show, :create, :update]
  resources :contracts
  resources :teams
  resources :leagues
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
