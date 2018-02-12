class MenuCategory < ApplicationRecord
  #salads, burgers, waffles, wings, desserts, sandwiches, plates, drinks, sides,
  belongs_to :menu

  has_many :menu_items
  has_many :subcategories
end
