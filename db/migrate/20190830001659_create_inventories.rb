class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.string :make
      t.string :model
      t.string :color
      t.integer :year
      t.integer :dealerprice
      t.integer :saleprice
      t.integer :profit
      t.string :inventorystatus

      t.timestamps
    end
  end
end
