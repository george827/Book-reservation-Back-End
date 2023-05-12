class AddTableNameToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :table_name, :string
  end
end
