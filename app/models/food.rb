class Food < ApplicationRecord
  has_many :restaurant_foods
  has_many :restaurants, through: :restaurant_foods, :foreign_key => :restaurant_id
  accepts_nested_attributes_for :restaurant_foods
end
