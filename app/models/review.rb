class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 0..5, message: "must be between 0 and 5" }
  validates :content, presence: true
end
