class AddFieldsToInventory < ActiveRecord::Migration[5.1]
  def change
    add_column :inventories, :stock_image_rul, :text
  end
end
