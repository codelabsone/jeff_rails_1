class RemoveFieldNameFromInventory < ActiveRecord::Migration[5.1]
  def change
    remove_column :inventories, :stock_image_rul, :text
  end
end
