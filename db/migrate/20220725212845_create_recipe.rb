class CreateRecipe < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :prepraration_time
      t.string :cookiing_time
      t.string :description
      t.string :public

      t.timestamps
    end
  end
end
