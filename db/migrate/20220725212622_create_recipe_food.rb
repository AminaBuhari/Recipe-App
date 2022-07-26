class CreateRecipeFood < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.int :quantity

      t.timestamps
    end
  end
end
