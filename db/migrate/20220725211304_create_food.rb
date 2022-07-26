class CreateFood < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.int :measurement
      t.int :price
      t.int :quantity

      t.timestamps
    end
  end
end
