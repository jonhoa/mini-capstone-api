class ProductsController < ApplicationController
  def index
    render json: {message: "test"}
  end

  def show
    product = Product.all
    render json: product.as_json
  end

  def create
    product1 = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      image_url: params[:input_image_url],
      description: params[:input_description]
    )
    product1.save
    render json: product1.as_json
  end
end
