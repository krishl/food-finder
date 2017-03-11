class RestaurantFood < ApplicationRecord
  belongs_to :food, optional: true
  belongs_to :restaurant, optional: true
end
