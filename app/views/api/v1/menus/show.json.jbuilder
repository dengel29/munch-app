# show.json.jbuilder

json.extract! @menu, :id, :name
json.menu_categories @menu.menu_categories do |menu_category|
  json.extract! menu_category, :id, :name, :description
end
