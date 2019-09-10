class AddFieldToInventory < ActiveRecord::Migration[5.1]
  def change
    add_column :inventories, :url, :string
  end
end
