class ProductsController < ApplicationController
  def show
    render json: {message: "test"}
  end
end
