Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "/login", to: "sessions#login"
      post "/register", to: "users#register"
      resources :reservations, only: [:index, :show, :create, :destroy]
      resources :restaurant_tables, only: [:index, :show]
    end
  end
end
