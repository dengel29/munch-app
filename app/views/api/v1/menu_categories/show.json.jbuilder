# show.json.jbuilder
json.extract! @menu_category, :id, :name
json.menu_items @menu_category.menu_items do |menu_item|
  json.extract! menu_item, :id, :name, :description
end
