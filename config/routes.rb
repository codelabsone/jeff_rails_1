Rails.application.routes.draw do
  resources :posts
  resource :session
  resources :users
  resources :automotives
  root "automotives#index"
  get 'signup' => 'users#new'
  get "/automotives/contacts", to: "automotives#contacts", as: "contacts"
  resources :automotives
  resources :stocks do
    resources :favorites
      resources :reviews
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
