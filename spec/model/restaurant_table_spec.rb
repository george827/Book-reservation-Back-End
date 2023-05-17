require 'rails_helper'

RSpec.describe RestaurantTable, type: :model do
  before(:example) do
    @user = User.create(name: 'Dev')
    @restaurant_table = RestaurantTable.create(image: 'photo', name: 'Table6', desc: '15/05/2023', price: '$16',
                                               table_size: 6)
    @reservation = Reservation.create(user: @user, city: 'Agra', start_date: '15/05/2023', end_date: '16/05/2023',
                                      table_name: 'Table6')
  end

  it 'image is invalid' do
    @restaurant_table.image = nil
    expect(@restaurant_table).to_not be_valid
  end

  it 'table name is invalid' do
    @restaurant_table.name = nil
    expect(@restaurant_table).to_not be_valid
  end

  it 'desc is invalid' do
    @restaurant_table.desc = nil
    expect(@restaurant_table).to_not be_valid
  end

  it 'price is invalid' do
    @restaurant_table.price = nil
    expect(@restaurant_table).to_not be_valid
  end

  it 'table size is invalid' do
    @restaurant_table.table_size = nil
    expect(@restaurant_table).to_not be_valid
  end
end
