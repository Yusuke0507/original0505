class OrdersController < ApplicationController

  def index
    @order = Order.new
    @products = Product.all
  end

  def show
    @order = Order.new
    @product = Product.find(params[:id])
  end

  def create  
    @order = Order.new(order_params)
    @product = @order.product
    p "-----------"
    p @order.product_id.class
    p "-----------"
    if @order.valid?
      @order.save
    else
      render 'show'
    end
  end

  def order_params
    params.require(:order).permit(:arrival, :number, :product_name, :product_price, :product_id).merge(user_id: current_user.id)
  end

end
