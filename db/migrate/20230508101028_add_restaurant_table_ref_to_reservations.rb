class AddRestaurantTableRefToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :restaurant_table, null: false, foreign_key: true
  end
end
