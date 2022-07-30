class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods

  validates :name, uniqueness: true
  # validates :quantity, :price, numericality: { greater_than: 0, only_float: true}
end
