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

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.price = params[:price]
    product.image_url = params[:image_url]
    product.description = params[:description]
    
    product.save
    render json: product.as_json
  end
  
  def destroy
    product = Product.find_by(id: params[:id])
    #code to delete the id param
    product.destroy
    render json: {message: "product deleted"}
  end

  
end
