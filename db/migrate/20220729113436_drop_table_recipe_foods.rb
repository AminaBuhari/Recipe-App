class DropTableRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    drop_table :table_recipe_foods
  end
end
