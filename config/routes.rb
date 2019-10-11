Rails.application.routes.draw do

  root "automotives#index"

  resources :users
  get 'signup' => 'users#new'

  resource :session

  get "/automotives/contacts", to: "automotives#contacts", as: "contacts"
  resources :automotives
  resources :stocks
end
