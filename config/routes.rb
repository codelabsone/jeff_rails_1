Rails.application.routes.draw do
  root "automotives#index"
  get "/automotives/contacts", to: "automotives#contacts", as: "contacts"
  resources :automotives
  resources :stocks
end
