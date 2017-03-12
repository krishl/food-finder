class Restaurant < ApplicationRecord
  has_many :restaurant_foods
  has_many :foods, through: :restaurant_foods, :foreign_key => :food_id
  accepts_nested_attributes_for :foods
  validates_presence_of :name
end
