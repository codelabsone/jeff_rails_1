class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :stars
      t.text :comment
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end
end
