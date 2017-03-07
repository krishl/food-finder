class AddBoroughToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :borough, :string
  end
end
