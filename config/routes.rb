Rails.application.routes.draw do
  root "automotives#index"
  get "automotives" => "automotives#index"
  get "automotives/:id" => "automotives#show", as: "automotive"
end
