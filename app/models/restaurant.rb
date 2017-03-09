class Restaurant < ApplicationRecord
  has_many :foodreviews
  has_many :foods, through: :foodreviews, :foreign_key => :food_id
  accepts_nested_attributes_for :foodreviews, :allow_destroy => true
end
