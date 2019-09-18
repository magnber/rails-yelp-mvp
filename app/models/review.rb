class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, length: { minimum: 5 }
  validates :rating, inclusion: 0..5, numericality: { only_integer: true }
end
