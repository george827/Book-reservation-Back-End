require 'rails_helper'

RSpec.describe 'RestraurantTable', type: :request do
  describe 'GET /index' do
    before(:example) do
        @user = User.create(name: 'Dev')
        @restaurant_table = RestaurantTable.create(image: 'photo', name: 'Table6', desc: '15/05/2023', price: '$16', table_size: 6)
        @reservation = Reservation.create(user_id: @user.id, restaurant_table_id: 3, city: 'Agra', start_date: '15/05/2023', end_date: '16/05/2023', table_name: 'Table6')
      get api_v1_restaurant_tables_path(@user)
    end

    it 'returns a successful response' do
        get api_v1_restaurant_tables_path(@user)
      expect(response).to be_successful
    end

    it 'text in response body' do
      get api_v1_restaurant_tables_path(@user)
      expect(response.body).to include('Table6')
    end
  end

    describe 'GET /show' do
      before(:example) do
          @user = User.create(name: 'Dev')
          @restaurant_table = RestaurantTable.create(image: 'photo', name: 'Table6', desc: '15/05/2023', price: '$16', table_size: 6)
          @reservation = Reservation.create(user: @user, city: 'Agra', start_date: '15/05/2023', end_date: '16/05/2023', table_name: 'Table6')
          get api_v1_restaurant_tables_path(@user, @reservation)
      end

      it 'returns a successful response' do
        get api_v1_restaurant_tables_path(@user, @restaurant_table)
        expect(response).to be_successful
      end

      it 'text in response body' do
        get api_v1_restaurant_tables_path(@user, @restaurant_table)
        expect(response.body).to include('photo')
      end

    end

end
