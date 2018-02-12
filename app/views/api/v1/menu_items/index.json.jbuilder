# index.json.jbuilder

json.array! @menu_items do |menu_item|
  json.extract! menu_item, :id, :name, :description,
end
