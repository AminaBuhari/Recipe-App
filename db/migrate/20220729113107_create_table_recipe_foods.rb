class CreateTableRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :table_recipe_foods do |t|

      t.timestamps
    end
  end
end
