class OrdersController < ApplicationController
  def create
    order = Order.new(order_params)

    if order.save
      render json: { message: 'Order successfully created', order: order }, status: :created
    else
      render json: { errors: order.errors.full_messages }, status: :unprocessable_entity
    end
  end
  def index
    @order= Order.all
    render json: @order
  end

  private

  def order_params
    params.require(:order).permit(:total_price, :payment_method, :phone_number, order_items_attributes: [:name, :price, :quantity])
  end
end
