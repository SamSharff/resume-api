Rails.application.routes.draw do
  post "/users" => "users#create"

  get "/experiences" => "experiences#index"
  post "/experiences" => "experiences#create"
  get "/experiences/:id" => "experiences#show"
  patch "/experiences/:id" => "experiences#update"

  get "/trainings" => "trainings#index"
  post "/trainings" => "trainings#create"
  get "/trainings/:id" => "trainings#show"
  patch "/trainings/:id" => "trainings#update"
end
