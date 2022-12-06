Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/all_items", controller: "products", action: "allitems"

  get "/item", controller: "products", action: "item"
end
