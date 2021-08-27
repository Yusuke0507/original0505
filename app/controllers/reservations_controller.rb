class ReservationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
    @reservation = Reservation.new
    @menu = Menu.all
  end

  def create
    reservation_id = Reservation.find_by(code: params[:reservation][:person_price_id]).id
    @reservation = Reservation.new(reservation_params)
    if @reservation.valid?
      @reservation.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:time, :date, :people, :remark, :menu_id, :total_price, :person_price).merge(user_id: current_user.id)
  end
end

