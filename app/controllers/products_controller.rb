class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product.as_json
  end

  def show
    product = Product.all
    render json: product.as_json
  end

  def create
    product1 = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      supplier_id: params[:supplier_id]
    )

    if product1.save
      render json: product1.as_json
    else
      render json: {error: product1.errors.full_messages}
    end
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.price = params[:price]
    product.image_url = params[:image_url]
    product.description = params[:description]
    
    if product.save
      render json: product.as_json
    else
      render json: {error: product.errors.full_messages}
    end
  end
  
  def destroy
    product = Product.find_by(id: params[:id])
    #code to delete the id param
    product.destroy
    render json: {message: "product deleted"}
  end

  
end
