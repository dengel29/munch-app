class CreateMenuSubcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_subcategories do |t|
      t.string :name
      t.references :menu_category

      t.timestamps
    end
  end
end
