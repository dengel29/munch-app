class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :description
      t.string :time_start
      t.string :time_end

      t.timestamps
    end
  end
end
