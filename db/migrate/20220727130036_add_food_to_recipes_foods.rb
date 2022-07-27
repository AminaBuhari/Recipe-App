class AddFoodToRecipesFoods < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes_foods, :recipe, null: false, foreign_key: true
    add_reference :recipes_foods, :food, null: false, foreign_key: true
  end
end
