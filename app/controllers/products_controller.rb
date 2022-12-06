class ProductsController < ApplicationController
  def allitems
    products = Product.all
    render json: products.as_json
  end
  
  def item
    # products = Product.all
    # render json: products.as_json
  end
end
