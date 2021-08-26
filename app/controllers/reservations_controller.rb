class ReservationsController < ApplicationController

  def index
  end

  def new
    @reservation = Reservation.new
    @menu = Menu.all
  end
end
