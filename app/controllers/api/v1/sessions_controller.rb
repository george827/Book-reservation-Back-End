class Api::V1::SessionsController < ApplicationController
  def login
    @user = User.find_by(name: params[:name])

    if @user
      session[:user_id] = @user.id
      render json: { success: true, user_id: @user.id, user_name: @user.name }, status: :ok
    else
      render json: { success: false, error: 'Invalid username' }, status: :unprocessable_entity
    end
  end
end
