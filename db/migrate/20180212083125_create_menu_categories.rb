class CreateMenuCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_categories do |t|
      t.string :name
      t.string :description
      t.string :category_photo
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
