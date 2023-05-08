class User < ApplicationRecord
  has_many :reservations
  has_many :restaurant_tables, through: :reservations

  validates :name, presence: true
end
