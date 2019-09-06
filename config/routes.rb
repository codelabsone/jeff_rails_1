Rails.application.routes.draw do
  get "automotives" => "automotives#index"
  get "automotives/:id" => "automotives#show"
end
