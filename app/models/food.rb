class Food < ApplicationRecord
  has_many :foodreviews
  has_many :restaurants, through: :foodreviews
  accepts_nested_attributes_for :foodreviews
end
