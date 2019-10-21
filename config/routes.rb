Rails.application.routes.draw do
<<<<<<< HEAD


  root "automotives#index"

=======
  resource :session
  resources :favorites
>>>>>>> f4449fc4151af4399219b151aacaec9266660658
  resources :users
  resources :automotives
  root "automotives#index"
  get 'signup' => 'users#new'
  get "/automotives/contacts", to: "automotives#contacts", as: "contacts"
<<<<<<< HEAD
  resources :automotives
  resources :stocks do
    resources :favorites
=======

  resources :stocks do
    resources :reviews
>>>>>>> f4449fc4151af4399219b151aacaec9266660658
  end
end
