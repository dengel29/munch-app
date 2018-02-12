class MenuSubcategory < ApplicationRecord
  #sandwich subcategories: beef, chicken, deli, cheese+veggies,
  has_many :menu_items
end
