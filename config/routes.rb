Rails.application.routes.draw do
  root "users#index"
  resources :user
  get "/login", to: "users#login"
  post "/login", to: "users#sign_in"
  delete "/logout", to: "users#logout"

  get "/sign_up", to: "users#sign_up"
  post "/sign_up", to: "users#registration"
end
