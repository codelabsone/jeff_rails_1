Rails.application.routes.draw do
  resources :users
  root "automotives#index"
  get "/automotives/contacts", to: "automotives#contacts", as: "contacts"
  resources :automotives
  resources :stocks
end
