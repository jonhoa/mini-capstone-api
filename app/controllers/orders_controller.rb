class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    order = Order.create(
      user_id: params[:user_id],
      product_id: params[:product_id] , 
      quantity: params[:quantity], 
      subtotal: params[:subtotal], 
      tax: params[:tax], 
      total: params[:total]
    )
    order.save
    render json: order.as_json
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order.as_json
  end

  def index
    order = Order.all
    render json: order.as_json
  end
end
