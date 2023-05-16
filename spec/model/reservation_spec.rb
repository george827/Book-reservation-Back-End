require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before(:example) do
    @user = User.create(name: 'Dev')
    @reservation = Reservation.create(user: @user, city: 'Agra', start_date: '15/05/2023', end_date: '16/05/2023', table_name: 'Table6')
  end

  it 'city is invalid' do
    @reservation.city = nil
    expect(@reservation).to_not be_valid
  end

  it 'table name is invalid' do
    @reservation.table_name = nil
    expect(@reservation).to_not be_valid
  end

  it 'start date is invalid' do
    @reservation.start_date = nil
    expect(@reservation).to_not be_valid
  end

  it 'end date is invalid' do
    @reservation.end_date = nil
    expect(@reservation).to_not be_valid
  end

end