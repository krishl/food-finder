class RemovePriceFromFoods < ActiveRecord::Migration[5.0]
  def change
    remove_column :foods, :price
    add_column :foodreviews, :price, :decimal
  end
end
