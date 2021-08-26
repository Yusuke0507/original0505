class ReservationsController < ApplicationController

  def index
  end

  def new
    @reservation = Reservation.new
    @menu = Menu.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
  end

  private
  def reservation_params
    params.require(:reservation).permit(:time, :date, :people, :remark, :menu_id).merge(user_id: current_user.id)
  end
end

