Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  resources :articles, only: [:index, :show]
  get "/me", to: "user#show"
  post "/login", to: "SessionController#create"
  delete "/logout", to:"sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
