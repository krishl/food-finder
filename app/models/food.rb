class Food < ApplicationRecord
  has_many :foodreviews
  has_many :restaurants, through: :foodreviews
end
