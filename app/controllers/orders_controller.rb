class OrdersController < ApplicationController

  def create
    order = Order.create(
      user_id: current_user.id,
      subtotal: params[:subtotal], 
      tax: params[:tax], 
      total: params[:total]
    )
    order.save
    render json: order.as_json
  end

  def show
    order = Order.where(user_id: current_user.id, status: "Carted")
    render json: order.as_json
  end

  def index
    order = Order.where(user_id: current_user.id, order_id: 0)
    render json: order.as_json
  end
end
