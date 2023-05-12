class Api::V1::ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(user_id: params[:user_id])
    render json: @reservations, status: :ok
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation, status: :ok
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = User.find(params[:user_id])
    @reservation.restaurant_table = RestaurantTable.find(params[:table_id])
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors.full_messages.join(', '), status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    render json: 'Reservation was cancelled successfully', status: :ok
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user, :table_name, :city, :start_date, :end_date, :user_id, :table_id)
  end
end
