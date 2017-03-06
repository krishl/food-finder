class Restaurant < ApplicationRecord
  has_many :foodreviews
  has_many :food, through: :foodreviews
end
