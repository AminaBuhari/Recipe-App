class Food < ApplicationRecord
  has_many :recipe_foods dependent: :destroy
  belong_to :user

  validates :name, presence: true, length: { maximum: 50 }
  validates :measurement_unit, presence: true, length: { maximum: 3 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, presnce: true, numericality: { greater_than_or_equal_to: 0 }
end