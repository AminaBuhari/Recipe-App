class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :preparation_time, default: 0.0
      t.string :cooking_time, default: 0.0
      t.string :description, default: ''
      t.string :public, default: false

      t.timestamps
    end
  end
end
