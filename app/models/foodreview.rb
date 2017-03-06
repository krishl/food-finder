class FoodReview < ApplicationRecord
  belongs_to :food
  belongs_to :restaurant
  belongs_to :user
end
