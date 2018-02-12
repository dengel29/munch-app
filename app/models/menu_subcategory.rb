class MenuSubcategory < ApplicationRecord
  #sandwich subcategories: beef, chicken, deli, cheese+veggies,
  belongs_to :user, optional: true
  has_many :menu_items
end
