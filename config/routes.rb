Rails.application.routes.draw do
  resources :members
  resources :trainers
  resources :workouts
  get "/", to: "workouts#home", as:"home"
end
