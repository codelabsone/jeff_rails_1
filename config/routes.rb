Rails.application.routes.draw do
  resource :session
  resources :favorites
  resources :users
  resources :automotives
  root "automotives#index"
  get 'signup' => 'users#new'
  get "/automotives/contacts", to: "automotives#contacts", as: "contacts"

  resources :stocks do
    resources :reviews
  end
end
