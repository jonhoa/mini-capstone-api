class ProductsController < ApplicationController
  def index
    render json: {message: "test"}
  end

  def show
    product = Product.all
    render json: product.as_json
  end
  
end
