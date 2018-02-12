class MenuCategory < ApplicationRecord
  #salads, burgers, waffles, wings, desserts, sandwiches, plates, drinks, sides,
  belongs_to :menu, optional: true
  belongs_to :user, optional: true

  has_many :menu_items
  has_many :subcategories
end
