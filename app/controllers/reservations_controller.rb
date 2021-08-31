class ReservationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
    @reservation = Reservation.new
    @menu = Menu.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.valid?
      pay_item
      @reservation.save
    else
      render 'new'
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:time, :date, :people, :remark, :menu_id, :total_price, :person_price).merge(user_id: current_user.id, token: params[:token])
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: reservation_params[:total_price],  
      card: reservation_params[:token],    
      currency: 'jpy'                 
    )
  end
end

