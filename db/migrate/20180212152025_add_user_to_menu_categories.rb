class AddUserToMenuCategories < ActiveRecord::Migration[5.1]
  def change
    add_reference :menu_categories, :user, foreign_key: true
  end
end
