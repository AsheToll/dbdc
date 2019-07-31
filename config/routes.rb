Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :dive_bars, only: [:index, :show]
  resources :neighborhoods, only: [:index, :show]
  resources :bands, only: [:index, :show]
  resources :reviews, only: [:new, :create]

  root "sessions#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"
  delete "/login", to: "users#destroy"
  get "/dive_bars/:dive_bar_id/reviews/new", to: "reviews#new", as: "bar_review"  
  post "/dive_bars/:dive_bar_id/reviews/new", to: "reviews#create"
end
