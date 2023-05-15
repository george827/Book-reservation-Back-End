class Api::V1::RestaurantTablesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  def index
    @restaurant_tables = RestaurantTable.all
    render json: @restaurant_tables, status: :ok
  end

  def show
    @restaurant_table = RestaurantTable.find(params[:id])
    render json: @restaurant_table, status: :ok
  end

  def create
    @restaurant_table = RestaurantTable.new(restaurant_table_params)
    if @restaurant_table.save
      render json: @restaurant_table, status: :created
    else
      render json: { errors: @restaurant_table.errors }, status: :unprocessable_entity
    end
  end

  def update
    @restaurant_table = RestaurantTable.find(params[:id])
    if @restaurant_table.update(restaurant_table_params)
      render json: @restaurant_table, status: :ok
    else
      render json: { errors: @restaurant_table.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @restaurant_table = RestaurantTable.find(params[:id])
    @restaurant_table.destroy
    head :no_content
    render json: { message: 'Restaurant table deleted' }, status: :ok
  end

  private

  def restaurant_table_params
    params.require(:restaurant_table).permit(:image, :name, :desc, :price, :table_size, :id)
  end
end
