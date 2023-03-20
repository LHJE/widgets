Rails.application.routes.draw do
  resources :widgets, only: [ :show, :index ]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/amazing", to: "widgets#index"
end
