class AddMealIdColumnToRestaurantTable < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :meal_id, :integer
  end
end
