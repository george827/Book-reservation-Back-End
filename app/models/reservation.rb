class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant_table

  validates :city, presence: true
  validates :table_name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
