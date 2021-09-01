class OrdersController < ApplicationController

  def index
    @order = Order.new
    @products = Product.all
  end

  def show
    @order = Order.new(order_params)
    @product = Product.find(params[:id])
    @order.save
  end

  def order_params
    params.require(:order).permit(:arrival, :number, :product_name, :product_price, :product_id).merge(user_id: current_user.id,)
  end

end
