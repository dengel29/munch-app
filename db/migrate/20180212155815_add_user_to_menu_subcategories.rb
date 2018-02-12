class AddUserToMenuSubcategories < ActiveRecord::Migration[5.1]
  def change
    add_reference :menu_subcategories, :user, foreign_key: true
  end
end
