class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :make
      t.string :model
      t.string :color
      t.integer :year
      t.integer :dealerprice
      t.integer :saleprice
      t.integer :profit
      t.string :inventorystatus
      t.string :url

      t.timestamps
    end
  end
end
