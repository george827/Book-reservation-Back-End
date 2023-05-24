class CreateRestaurantTables < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_tables do |t|
      t.string :image
      t.string :name
      t.integer :table_size
      t.decimal :price
      t.text :desc

      t.timestamps
    end
  end
end
