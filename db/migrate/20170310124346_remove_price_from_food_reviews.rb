class RemovePriceFromFoodReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :foodreviews, :price
    add_column :foods, :price, :decimal
  end
end
