Rails.application.routes.draw do
  # resources :user_stocks
  namespace :api do
    namespace :v1 do
  resources :stocks
  resources :users
  resources :user_stocks

  post "/auth", to: "auth#create"
   get "/signup", to: "auth#find_user"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
end
