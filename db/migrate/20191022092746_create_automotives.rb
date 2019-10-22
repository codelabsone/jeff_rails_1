class CreateAutomotives < ActiveRecord::Migration[6.0]
  def change
    create_table :automotives do |t|

      t.timestamps
    end
  end
end
