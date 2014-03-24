Scattergories::Application.routes.draw do
  root "rounds#new"

  get "rounds/category", to: "rounds#category"
  get "rounds/letter", to: "rounds#get_letter"
  get "rounds/auto_reject", to: "rounds#auto_reject"

  resources :rounds, only: [:show, :create]

  mount Redis::Engine, at: "/redis"
end
