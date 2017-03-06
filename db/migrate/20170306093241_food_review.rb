class FoodReview < ActiveRecord::Migration[5.0]
  def change
    create_table :foodreviews do |t|
      t.integer :restaurant_id
      t.integer :food_id
      t.integer :user_id
      t.text :review
      t.integer :rating
    end
  end
end
