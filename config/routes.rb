Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match '/users'=>"users#create",via: :options
  resources :users
  post "login",to: "authentication#login"
end
