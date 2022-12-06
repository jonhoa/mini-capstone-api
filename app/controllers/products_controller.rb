class ProductsController < ApplicationController
  def items
    render json:{message: "yoda"}
  end
end
