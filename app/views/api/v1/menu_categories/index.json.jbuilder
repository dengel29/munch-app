# index.json.jbuilder

json.array! @menu_categories do |menu_category|
  json.extract! menu_category, :id, :name, :description
end
