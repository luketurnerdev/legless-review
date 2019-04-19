Rails.application.routes.draw do
  #create a full CRUD path for resources
  get "/", to: "pages#home", as: "root"
  resources :listings
end
