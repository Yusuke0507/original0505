class OrdersController < ApplicationController

  def index
    @order = Order.new
    @products = Product.all
  end

  def show
    @order = Order.new
    @product = Product.find(params[:id])
  end
end
