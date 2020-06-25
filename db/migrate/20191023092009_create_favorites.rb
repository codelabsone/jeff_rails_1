class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :stock, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end