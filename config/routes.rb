Rails.application.routes.draw do
  get "/products/:id" => "products#show"  

  get "/products" => "products#index"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"

  get "/orders/:id" => "orders#show"

  get "/orders" => "orders#index"

  post "/cart" => "carted_products#create"

  get "/cart" => "carted_products#index"
end
