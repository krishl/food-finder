class CreateRestaurantFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_foods do |t|
      t.integer :restaurant_id
      t.integer :food_id
      t.string :item_type
    end
  end
end
