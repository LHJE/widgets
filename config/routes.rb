Rails.application.routes.draw do
  resources :widgets, only: [ :show, :index ]
  resources :widget_ratings, only: [ :create  ]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :customer_service do
    resources :widgets, only: [ :show, :update, :destroy ]
  end

  get "/amazing", to: "widgets#index"
end
