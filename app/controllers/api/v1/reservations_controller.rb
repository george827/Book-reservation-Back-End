class Api::V1::ReservationsController < ApplicationController
  def index
    render json: current_user.Reservation.all, status: :ok
  end

  def show
    @reservation = current_user.Reservation.find(params[:id])
    render json: @reservation, status: :ok
  end

  def create
    @reservation = current_user.Reservation.new(reservation_params)
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: {errors: @reservation.errors}, status: :unprocessable_entity
    end
  end

  def update
    @reservation = current_user.Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      render json: @reservation, status: :ok
    else
      render json: {errors: @reservation.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = current_user.Reservation.find(params[:id])
    @reservation.destroy
    render json: {message: "Reservation cancelled"}, status: :ok
  end

  private

  def reservation_params
    params.require(:reservation).permit(:city, :start_date, :end_date, :restaurant_table_id)
  end
end