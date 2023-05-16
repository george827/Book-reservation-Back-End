require 'rails_helper'

RSpec.describe User, type: :model do
  before(:example) do
    @user = User.create(name: 'Dev')
  end

  it 'name is invalid' do
    @user.name = nil
    expect(@user).to_not be_valid
  end
end
