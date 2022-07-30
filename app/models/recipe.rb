class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, dependent: :destroy

  has_many :foods, through: :ingredients

  validates :name, presence: true, length: { maximum: 25 }
  validates :description, presence: true, length: { maximum: 350 }

  def add_ingredient!(food, quantity)
    present = foods.find_by(name: food.name)
    if present
      ingredients.create!(food: present, quantity:) unless present
    else
      ingredients.create!(food:, quantity:) unless present
    end
  end

  def recipe_price
    rand(1.5..254.4).round(2)
  end
end
