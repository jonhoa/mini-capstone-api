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
      name: "Knife",
      price: 10,
      image_url: "google",
      description: "A sharp metallic blade"
    )
    product1.save
    render json: product1.as_json
  end
end
