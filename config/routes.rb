Rails.application.routes.draw do
  root "automotives#index"

  resources :automotives
  resources :inventory
end
