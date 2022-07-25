class CreateFood < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement
      t.string :price
      t.string :quantity
      t.string :Userreference

      t.timestamps
    end
  end
end
