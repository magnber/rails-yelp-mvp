class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  validates :category, inclusion: { in: %W(chinese italian japanese french belgian)}
  has_many :reviews, dependent: :destroy

  CATEGORIES = %W(chinese italian japanese french belgian)
end
