Rails.application.routes.draw do
  resources :units
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static#main"
end
