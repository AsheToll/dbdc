Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :dive_bars, only: [:index, :show]
  resources :neighborhoods, only: [:index, :show]
  resources :bands, only: [:index, :show]
end
