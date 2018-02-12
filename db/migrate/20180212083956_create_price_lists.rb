class CreatePriceLists < ActiveRecord::Migration[5.1]
  def change
    create_table :price_lists do |t|
      t.references :menu_item, foreign_key: true
      t.string :price_jr
      t.string :price_regular
      t.string :price_combo
      t.string :price_combo_xl
      t.string :price_special

      t.timestamps
    end
  end
end
