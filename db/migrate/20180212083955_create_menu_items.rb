class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :description
      t.references :menu_category, foreign_key: true
      t.references :menu_subcategory, foreign_key: true
      t.string :menu_item_photo
      t.string :can_combo
      t.string :in_stock

      t.timestamps
    end
  end
end
