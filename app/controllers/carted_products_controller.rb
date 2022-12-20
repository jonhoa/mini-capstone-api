class CartedProductsController < ApplicationController
  def create
    cp = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
      order_id: 0
    )
    cp.save
    render json: cp.as_json
  end
end
