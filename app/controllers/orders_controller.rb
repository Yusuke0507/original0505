class OrdersController < ApplicationController

  def index
    @product = Product.all
  end

end
