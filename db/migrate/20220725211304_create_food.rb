class CreateFood < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement_unit
      t.float :price, default: 0.0
      t.int :quantity, default: 0

      t.timestamps
    end
  end
end
