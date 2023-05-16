class RestaurantTable < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :image, presence: true
  validates :name, presence: true
  validates :table_size, presence: true
  validates :price, presence: true
  validates :desc, presence: true
end
