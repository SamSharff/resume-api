Rails.application.routes.draw do
  post "/users" => "users#create"

  get "/experiences" => "experiences#index"
  post "/experiences" => "experiences#create"
  get "/experiences/:id" => "experiences#show"
end
