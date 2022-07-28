class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods

  validates :name, presence: true, length: { maximum: 25 }
  validates :description, presence: true, length: { maximum: 350 }

  def add_ingredient!(food, quantity)
    exist = foods.find_by(name: food.name)
    if exist
      ingredients.create!(food: exist, quantity:) unless exist
    else
      ingredients.create!(food:, quantity:) unless exist
    end
  end
end
