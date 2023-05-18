class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant_table

  validates :city, presence: true, length: { minimum: 3, maximum: 50 }
  validates :table_name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :start_date, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "must be in the format YYYY-MM-DD and have exactly 10 characters" }, length: { is: 10 }
  validates :end_date, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "must be in the format YYYY-MM-DD and have exactly 10 characters" }, length: { is: 10 }
end
