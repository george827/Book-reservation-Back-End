class RestaurantTable < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :image, presence: true
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :table_size, presence: true, numericality: { greater_than: 0 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :desc, presence: true, length: { minimum: 10, maximum: 100 }
end
