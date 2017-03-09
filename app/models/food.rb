class Food < ApplicationRecord
  has_many :foodreviews
  has_many :restaurants, through: :foodreviews, :foreign_key => :restaurant_id
  accepts_nested_attributes_for :foodreviews
end
