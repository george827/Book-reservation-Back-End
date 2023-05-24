Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      post "/login", to: "sessions#login"
      post "/register", to: "users#register"
      resources :reservations, only: [:index, :show, :create, :destroy]
      resources :restaurant_tables, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
