class Restaurant < ApplicationRecord
  has_many :foodreviews
  has_many :food, through: :foodreviews
  accepts_nested_attributes_for :foodreviews
end
